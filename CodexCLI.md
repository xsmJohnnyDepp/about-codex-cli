# OpenAI Codex CLI

Verified against `codex-cli 0.131.0`.

OpenAI Codex CLI is a locally running coding agent from OpenAI that operates directly on your computer. It combines an interactive terminal UI (TUI) with a non-interactive execution mode (`codex exec`) and a rich programmatic interface (`codex app-server`) that powers IDE extensions such as the official VS Code extension. The agent accepts natural language prompts and autonomously reads code, runs shell commands, edits files, and streams results back to the user — all while enforcing configurable sandboxing and approval policies to keep operations safe. It supports authentication via ChatGPT account (Plus, Pro, Business, Edu, Enterprise) or a raw OpenAI API key, connects to MCP (Model Context Protocol) servers, and can be extended through skills, hooks, plugins, and apps.

The repository is a Rust-first monorepo (`codex-rs/`) backed by a Cargo workspace of 90+ crates, accompanied by a legacy TypeScript CLI (`codex-cli/`), TypeScript and Python SDKs under `sdk/`, and developer tooling. The core agent loop lives in `codex-core`, the terminal UI in `codex-tui`, and the bidirectional JSON-RPC 2.0 app-server protocol in `codex-app-server` / `codex-app-server-protocol`. All active API development targets the v2 protocol; v1 is a legacy compatibility shim with a limited allowlist of types.

---

## Installation

### Install globally with npm or Homebrew

```shell
# npm
npm install -g @openai/codex

# Homebrew
brew install --cask codex

# After installing, start the interactive TUI
codex
```

### Build from source

```bash
git clone https://github.com/openai/codex.git
cd codex/codex-rs

# Install Rust toolchain
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"
rustup component add rustfmt clippy
cargo install --locked just
cargo install --locked cargo-nextest

# Build and run
cargo build
cargo run --bin codex -- "explain this codebase to me"

# Run tests for a specific crate
cargo test -p codex-tui

# Format and lint
just fmt
just fix -p codex-tui
```

---

## CLI — Interactive TUI

### `codex` (interactive mode)

Launches the full interactive terminal UI. Accepts an optional initial prompt as a positional argument and numerous flags to configure model, sandbox, approval policy, and more.

```shell
# Launch interactive TUI with no prompt (opens empty session)
codex

# Launch with an initial prompt
codex "refactor the authentication module to use JWT"

# Specify model and working directory
codex -m gpt-5.1-codex -C /path/to/project "add unit tests for the parser"

# Use workspace-write sandbox (can write within the project root) with auto-approval
codex --sandbox workspace-write --ask-for-approval never "run all tests and fix failures"

# Connect to a remote app-server websocket
codex --remote ws://127.0.0.1:4500 --remote-auth-token-env MY_TOKEN_ENV

# Enable live web search for this session
codex --search "summarize the latest PRs"
```

---

## CLI — Non-interactive Execution

### `codex exec`

Runs a single prompt non-interactively and exits. Ideal for CI pipelines and scripting.

```shell
# Run a task non-interactively and print JSON output
codex exec --json "summarize all TODO comments in the codebase"

# Run with danger-bypass (full access, no approval prompts)
codex exec --dangerously-bypass-approvals-and-sandbox "apply the patch from /tmp/fix.patch"

# Resume a previous session and continue non-interactively
codex exec resume --last "re-run all tests"
codex exec resume session-123 -o /tmp/output.md "re-review"
```

---

## CLI — Code Review

### `codex review`

Runs Codex's automated reviewer non-interactively on uncommitted changes, a branch diff, or a specific commit.

```shell
# Review uncommitted changes
codex review --uncommitted

# Review diff against main
codex review --base main

# Review a specific commit
codex review --commit abc1234 --title "Polish TUI colors"
```

---

## CLI — Session Management

### `codex resume` and `codex fork`

Resume or branch existing Codex conversations from the CLI.

```shell
# Resume the most recent session interactively
codex resume --last

# Resume a specific session by ID
codex resume 123e4567-e89b-12d3-a456-426614174000

# Show a picker for all sessions (not filtered by cwd)
codex resume --all

# Fork the most recent session
codex fork --last

# Fork a specific session by ID
codex fork 123e4567-e89b-12d3-a456-426614174000
```

---

## CLI — Authentication

### `codex login` and `codex logout`

Manage authentication credentials stored locally.

```shell
# Interactive browser-based ChatGPT login
codex login

# Device-code flow (useful for headless environments)
codex login --device-auth

# Pipe an API key from an environment variable
printenv OPENAI_API_KEY | codex login --with-api-key

# Check current login status
codex login status

# Sign out and remove stored credentials
codex logout
```

---

## CLI — App Server

### `codex app-server`

Starts the JSON-RPC 2.0 app server. Clients connect over stdio (default), WebSocket, or Unix socket and drive the agent programmatically.

```shell
# Start on stdio (default — for IDE extensions)
codex app-server

# Start on a WebSocket endpoint
codex app-server --listen ws://127.0.0.1:4500

# Start with WebSocket capability-token auth
codex app-server --listen ws://127.0.0.1:4500 \
  --ws-auth capability-token \
  --ws-token-file /absolute/path/to/token

# Start with HMAC-signed bearer-token auth
codex app-server --listen ws://127.0.0.1:4500 \
  --ws-auth signed-bearer-token \
  --ws-shared-secret-file /tmp/secret \
  --ws-issuer my-issuer \
  --ws-audience my-audience

# Start on a Unix socket (default socket path under $CODEX_HOME)
codex app-server --listen unix://

# Generate TypeScript schema bindings for the protocol
codex app-server generate-ts --out ./schema/
codex app-server generate-ts --out ./schema/ --experimental

# Generate JSON Schema bundle
codex app-server generate-json-schema --out ./schema/

# Manage the local app-server daemon (for SSH/remote use)
codex app-server daemon start
codex app-server daemon stop
codex app-server daemon restart
codex app-server daemon version

# Proxy stdio bytes to the running control socket
codex app-server proxy
codex app-server proxy --sock /custom/path.sock
```

---

## App Server Protocol — Connection Lifecycle

### `initialize` / `initialized`

Every client must send `initialize` immediately after connecting and follow it with an `initialized` notification before issuing any other request. The server returns runtime metadata. Set `capabilities.experimentalApi: true` to unlock gated methods and fields.

```json
// 1. Client → Server: initialize
{
  "method": "initialize",
  "id": 0,
  "params": {
    "clientInfo": {
      "name": "my_custom_client",
      "title": "My Custom Client",
      "version": "1.0.0"
    },
    "capabilities": {
      "experimentalApi": true,
      "optOutNotificationMethods": ["item/agentMessage/delta"]
    }
  }
}

// 2. Server → Client: response
{
  "id": 0,
  "result": {
    "userAgent": "codex/0.0.0-dev",
    "codexHome": "/Users/me/.codex",
    "platformFamily": "unix",
    "platformOs": "macos"
  }
}

// 3. Client → Server: initialized notification (no id)
{ "method": "initialized" }
```

---

## App Server Protocol — Thread Management

### `thread/start`, `thread/resume`, `thread/fork`

Create, reopen, or branch Codex conversation threads. All three return a `thread` object and emit `thread/started`.

```json
// Start a new thread
{
  "method": "thread/start",
  "id": 10,
  "params": {
    "model": "gpt-5.1-codex",
    "cwd": "/Users/me/project",
    "approvalPolicy": "never",
    "sandbox": "workspaceWrite",
    "personality": "friendly",
    "dynamicTools": [
      {
        "name": "lookup_ticket",
        "description": "Fetch a ticket by id",
        "deferLoading": false,
        "inputSchema": {
          "type": "object",
          "properties": { "id": { "type": "string" } },
          "required": ["id"]
        }
      }
    ]
  }
}
// Response
{ "id": 10, "result": { "thread": { "id": "thr_123", "preview": "", "modelProvider": "openai", "createdAt": 1730910000 } } }
{ "method": "thread/started", "params": { "thread": { "id": "thr_123", ... } } }

// Resume an existing thread
{ "method": "thread/resume", "id": 11, "params": { "threadId": "thr_123", "personality": "friendly" } }
{ "id": 11, "result": { "thread": { "id": "thr_123", ... } } }

// Fork a thread into an ephemeral in-memory branch
{ "method": "thread/fork", "id": 12, "params": { "threadId": "thr_123", "ephemeral": true } }
{ "id": 12, "result": { "thread": { "id": "thr_456", "sessionId": "thr_456", ... } } }
{ "method": "thread/started", "params": { "thread": { ... } } }
```

---

## App Server Protocol — Thread Listing and Reading

### `thread/list`, `thread/read`, `thread/loaded/list`

Page through stored threads, read a single thread, or list currently loaded (in-memory) threads.

```json
// List threads with pagination and filters
{
  "method": "thread/list",
  "id": 20,
  "params": {
    "cursor": null,
    "limit": 25,
    "cwd": ["/Users/me/project"],
    "sortKey": "updated_at",
    "sortDirection": "desc",
    "archived": false,
    "searchTerm": "fix tests"
  }
}
{
  "id": 20,
  "result": {
    "data": [
      { "id": "thr_a", "preview": "Fix failing unit tests", "modelProvider": "openai", "createdAt": 1730831111, "updatedAt": 1730831111, "status": { "type": "notLoaded" } }
    ],
    "nextCursor": null,
    "backwardsCursor": null
  }
}

// Read a thread with its turn history
{ "method": "thread/read", "id": 22, "params": { "threadId": "thr_123", "includeTurns": true } }
{ "id": 22, "result": { "thread": { "id": "thr_123", "status": { "type": "idle" }, "turns": [ ... ] } } }

// List threads currently loaded in memory
{ "method": "thread/loaded/list", "id": 21 }
{ "id": 21, "result": { "data": ["thr_123", "thr_456"] } }
```

---

## App Server Protocol — Turn Lifecycle

### `turn/start`, `turn/steer`, `turn/interrupt`

Drive user turns in a thread. `turn/start` submits user input and triggers generation; `turn/steer` appends additional input to a live turn; `turn/interrupt` cancels it.

```json
// Start a turn with text and image input
{
  "method": "turn/start",
  "id": 30,
  "params": {
    "threadId": "thr_123",
    "input": [
      { "type": "text", "text": "Run the test suite and fix any failures" },
      { "type": "localImage", "path": "/tmp/screenshot.png" }
    ],
    "cwd": "/Users/me/project",
    "approvalPolicy": "unlessTrusted",
    "sandboxPolicy": { "type": "workspaceWrite", "writableRoots": ["/Users/me/project"], "networkAccess": true },
    "model": "gpt-5.1-codex",
    "effort": "medium",
    "outputSchema": {
      "type": "object",
      "properties": { "summary": { "type": "string" } },
      "required": ["summary"],
      "additionalProperties": false
    }
  }
}
{ "id": 30, "result": { "turn": { "id": "turn_456", "status": "inProgress", "items": [], "error": null } } }

// Steer (append input to a live turn)
{
  "method": "turn/steer",
  "id": 32,
  "params": {
    "threadId": "thr_123",
    "input": [ { "type": "text", "text": "Actually focus on the failing tests first." } ],
    "expectedTurnId": "turn_456"
  }
}
{ "id": 32, "result": { "turnId": "turn_456" } }

// Interrupt an active turn
{ "method": "turn/interrupt", "id": 31, "params": { "threadId": "thr_123", "turnId": "turn_456" } }
{ "id": 31, "result": {} }
// Server later emits:
{ "method": "turn/completed", "params": { "turn": { "id": "turn_456", "status": "interrupted", ... } } }
```

---

## App Server Protocol — Turn Streaming Events

### `turn/started`, `item/started`, `item/agentMessage/delta`, `item/completed`, `turn/completed`

After calling `turn/start`, keep reading notifications from stdout. The full item lifecycle is always: `item/started` → zero or more deltas → `item/completed`, followed by `turn/completed`.

```json
// Typical notification stream for a turn
{ "method": "turn/started", "params": { "turn": { "id": "turn_456", "status": "inProgress", "items": [] } } }

{ "method": "item/started", "params": { "item": { "id": "msg_1", "type": "agentMessage", "text": "" } } }
{ "method": "item/agentMessage/delta", "params": { "itemId": "msg_1", "delta": "Running " } }
{ "method": "item/agentMessage/delta", "params": { "itemId": "msg_1", "delta": "cargo test..." } }
{ "method": "item/completed", "params": { "item": { "id": "msg_1", "type": "agentMessage", "text": "Running cargo test..." } } }

{ "method": "item/started", "params": { "item": { "id": "cmd_1", "type": "commandExecution", "command": ["cargo", "test"], "cwd": "/Users/me/project", "status": "inProgress" } } }
{ "method": "item/commandExecution/outputDelta", "params": { "itemId": "cmd_1", "delta": "running 42 tests..." } }
{ "method": "item/completed", "params": { "item": { "id": "cmd_1", "type": "commandExecution", "status": "completed", "exitCode": 0, "durationMs": 4200 } } }

{ "method": "turn/completed", "params": { "turn": { "id": "turn_456", "status": "completed", ... } } }
{ "method": "thread/tokenUsage/updated", "params": { "threadId": "thr_123", "usage": { "totalTokens": 1500 } } }
```

---

## App Server Protocol — Approval Flows

### `item/commandExecution/requestApproval`, `item/fileChange/requestApproval`

When the agent proposes a command or file change that requires user approval, the server sends a JSON-RPC *request* (with an `id`) to the client. The client must respond to resume or decline the work.

```json
// Server → Client: command execution approval request
{
  "method": "item/commandExecution/requestApproval",
  "id": 50,
  "params": {
    "itemId": "cmd_1",
    "threadId": "thr_123",
    "turnId": "turn_456",
    "command": ["rm", "-rf", "/tmp/build"],
    "cwd": "/Users/me/project",
    "reason": "Clean build artifacts"
  }
}

// Client → Server: accept
{ "id": 50, "result": { "decision": "accept" } }

// Client → Server: accept for entire session
{ "id": 50, "result": { "decision": "acceptForSession" } }

// Client → Server: decline
{ "id": 50, "result": { "decision": "decline" } }

// Server → Client: file change approval request
{
  "method": "item/fileChange/requestApproval",
  "id": 51,
  "params": {
    "itemId": "patch_1",
    "threadId": "thr_123",
    "turnId": "turn_456",
    "reason": "Apply generated patch"
  }
}
// Client responds:
{ "id": 51, "result": { "decision": "accept" } }

// Server confirms resolution
{ "method": "serverRequest/resolved", "params": { "threadId": "thr_123", "requestId": 51 } }
// Final item state
{ "method": "item/completed", "params": { "item": { "id": "patch_1", "type": "fileChange", "status": "completed", ... } } }
```

---

## App Server Protocol — Code Review

### `review/start`

Kick off Codex's automated reviewer. Supports reviewing uncommitted changes, a base branch diff, a specific commit, or custom instructions. Can run inline on the current thread or detached on a forked review thread.

```json
// Inline review of a specific commit
{
  "method": "review/start",
  "id": 40,
  "params": {
    "threadId": "thr_123",
    "delivery": "inline",
    "target": { "type": "commit", "sha": "1234567deadbeef", "title": "Polish TUI colors" }
  }
}
{
  "id": 40,
  "result": {
    "turn": { "id": "turn_900", "status": "inProgress", "items": [...], "error": null },
    "reviewThreadId": "thr_123"
  }
}

// Server streams:
{ "method": "item/started", "params": { "item": { "type": "enteredReviewMode", "id": "turn_900", "review": "commit 1234567" } } }
// ... item deltas ...
{
  "method": "item/completed",
  "params": {
    "item": {
      "type": "exitedReviewMode",
      "id": "turn_900",
      "review": "Looks solid overall...\n\n- Prefer Stylize helpers — app.rs:10-20\n  Consider replacing Span::styled(...) with .dim() for cleaner code."
    }
  }
}

// Detached review (forks a new review thread)
{
  "method": "review/start",
  "id": 41,
  "params": {
    "threadId": "thr_123",
    "delivery": "detached",
    "target": { "type": "uncommittedChanges" }
  }
}
{ "id": 41, "result": { "turn": { ... }, "reviewThreadId": "thr_review_789" } }
{ "method": "thread/started", "params": { "thread": { "id": "thr_review_789", ... } } }
```

---

## App Server Protocol — Command Execution

### `command/exec`, `command/exec/write`, `command/exec/resize`, `command/exec/terminate`

Run standalone sandboxed commands without starting a thread. Supports buffered and streaming (PTY) modes.

```json
// Buffered execution
{
  "method": "command/exec",
  "id": 32,
  "params": {
    "command": ["cargo", "test", "--", "--nocapture"],
    "processId": "cargo-test-1",
    "cwd": "/Users/me/project",
    "timeoutMs": 60000,
    "outputBytesCap": 1048576
  }
}
{ "id": 32, "result": { "exitCode": 0, "stdout": "test result: ok. 42 passed", "stderr": "" } }

// Interactive PTY session (bash shell)
{
  "method": "command/exec",
  "id": 33,
  "params": {
    "command": ["bash", "-i"],
    "processId": "bash-1",
    "tty": true,
    "size": { "rows": 40, "cols": 120 },
    "outputBytesCap": 32768
  }
}
{ "id": 33, "result": {} }  // deferred until process exits

// Output arrives as notifications
{ "method": "command/exec/outputDelta", "params": { "processId": "bash-1", "stream": "stdout", "deltaBase64": "YmFzaC00LjQkIA==", "capReached": false } }

// Write stdin bytes (base64-encoded "pwd\n")
{ "method": "command/exec/write", "id": 34, "params": { "processId": "bash-1", "deltaBase64": "cHdkCg==" } }
{ "id": 34, "result": {} }

// Resize the PTY
{ "method": "command/exec/resize", "id": 35, "params": { "processId": "bash-1", "size": { "rows": 48, "cols": 160 } } }
{ "id": 35, "result": {} }

// Terminate
{ "method": "command/exec/terminate", "id": 36, "params": { "processId": "bash-1" } }
{ "id": 36, "result": {} }
```

---

## App Server Protocol — Process Spawn (Experimental)

### `process/spawn`, `process/writeStdin`, `process/resizePty`, `process/kill`

Launch unsandboxed host processes with streaming I/O. Requires `capabilities.experimentalApi: true`.

```json
// Spawn a process (returns immediately; completion via process/exited notification)
{
  "method": "process/spawn",
  "id": 40,
  "params": {
    "command": ["cargo", "build", "--release"],
    "processHandle": "build-1",
    "cwd": "/Users/me/project",
    "env": { "RUST_LOG": null },
    "outputBytesCap": 2097152,
    "timeoutMs": 300000
  }
}
{ "id": 40, "result": {} }

// Completion notification
{
  "method": "process/exited",
  "params": {
    "processHandle": "build-1",
    "exitCode": 0,
    "stdout": "   Compiling codex v0.1.0...\n   Finished release [optimized]",
    "stdoutCapReached": false,
    "stderr": "",
    "stderrCapReached": false
  }
}

// Interactive process with PTY
{
  "method": "process/spawn",
  "id": 41,
  "params": {
    "command": ["bash", "-i"],
    "processHandle": "bash-1",
    "cwd": "/Users/me/project",
    "tty": true,
    "size": { "rows": 40, "cols": 120 },
    "outputBytesCap": null,
    "timeoutMs": null
  }
}
{ "method": "process/outputDelta", "params": { "processHandle": "bash-1", "stream": "stdout", "deltaBase64": "YmFzaC00LjQkIA==", "capReached": false } }
{ "method": "process/writeStdin", "id": 42, "params": { "processHandle": "bash-1", "deltaBase64": "cHdkCg==" } }
{ "method": "process/resizePty", "id": 43, "params": { "processHandle": "bash-1", "size": { "rows": 48, "cols": 160 } } }
{ "method": "process/kill", "id": 44, "params": { "processHandle": "bash-1" } }
```

---

## App Server Protocol — Filesystem API

### `fs/readFile`, `fs/writeFile`, `fs/createDirectory`, `fs/getMetadata`, `fs/readDirectory`, `fs/remove`, `fs/copy`, `fs/watch`, `fs/unwatch`

A complete filesystem RPC surface operating on absolute paths. Reads and writes use base64 encoding.

```json
// Create directory, write, read, and get metadata
{ "method": "fs/createDirectory", "id": 40, "params": { "path": "/tmp/example/nested", "recursive": true } }
{ "id": 40, "result": {} }

{ "method": "fs/writeFile", "id": 41, "params": { "path": "/tmp/example/nested/hello.txt", "dataBase64": "aGVsbG8gd29ybGQ=" } }
{ "id": 41, "result": {} }

{ "method": "fs/readFile", "id": 42, "params": { "path": "/tmp/example/nested/hello.txt" } }
{ "id": 42, "result": { "dataBase64": "aGVsbG8gd29ybGQ=" } }

{ "method": "fs/getMetadata", "id": 43, "params": { "path": "/tmp/example/nested/hello.txt" } }
{ "id": 43, "result": { "isDirectory": false, "isFile": true, "isSymlink": false, "createdAtMs": 1730910000000, "modifiedAtMs": 1730910000000 } }

{ "method": "fs/readDirectory", "id": 44, "params": { "path": "/tmp/example/nested" } }
{ "id": 44, "result": { "entries": [ { "fileName": "hello.txt", "isFile": true, "isDirectory": false } ] } }

// Watch a path for changes
{ "method": "fs/watch", "id": 45, "params": { "watchId": "watch-1", "path": "/Users/me/project/.git/HEAD" } }
{ "id": 45, "result": { "path": "/Users/me/project/.git/HEAD" } }
{ "method": "fs/changed", "params": { "watchId": "watch-1", "changedPaths": ["/Users/me/project/.git/HEAD"] } }

// Unwatch
{ "method": "fs/unwatch", "id": 46, "params": { "watchId": "watch-1" } }
{ "id": 46, "result": {} }
```

---

## App Server Protocol — Authentication

### `account/read`, `account/login/start`, `account/logout`, `account/rateLimits/read`

Query and manage authentication from any app-server client.

```json
// Check auth state
{ "method": "account/read", "id": 1, "params": { "refreshToken": false } }
{ "id": 1, "result": { "account": { "type": "chatgpt", "email": "user@example.com", "planType": "pro" }, "requiresOpenaiAuth": true } }

// Log in with API key (pipe key via stdin at CLI level; send here for programmatic clients)
{ "method": "account/login/start", "id": 2, "params": { "type": "apiKey", "apiKey": "sk-..." } }
{ "id": 2, "result": { "type": "apiKey" } }
{ "method": "account/login/completed", "params": { "loginId": null, "success": true, "error": null } }
{ "method": "account/updated", "params": { "authMode": "apikey", "planType": null } }

// ChatGPT browser OAuth flow
{ "method": "account/login/start", "id": 3, "params": { "type": "chatgpt" } }
{ "id": 3, "result": { "type": "chatgpt", "loginId": "uuid-1234", "authUrl": "https://chatgpt.com/...&redirect_uri=http%3A%2F%2Flocalhost%3A12345%2Fauth%2Fcallback" } }
// Open authUrl in browser, then wait for:
{ "method": "account/login/completed", "params": { "loginId": "uuid-1234", "success": true, "error": null } }
{ "method": "account/updated", "params": { "authMode": "chatgpt", "planType": "plus" } }

// Device-code flow
{ "method": "account/login/start", "id": 4, "params": { "type": "chatgptDeviceCode" } }
{ "id": 4, "result": { "type": "chatgptDeviceCode", "loginId": "uuid-5678", "verificationUrl": "https://auth.openai.com/codex/device", "userCode": "ABCD-1234" } }

// Logout
{ "method": "account/logout", "id": 6 }
{ "id": 6, "result": {} }
{ "method": "account/updated", "params": { "authMode": null, "planType": null } }

// Read rate limits
{ "method": "account/rateLimits/read", "id": 7 }
{ "id": 7, "result": { "rateLimits": { "primary": { "usedPercent": 25, "windowDurationMins": 15, "resetsAt": 1730947200 }, "secondary": null, "rateLimitReachedType": null } } }
```

---

## App Server Protocol — Skills, Hooks, and Apps

### `skills/list`, `skills/config/write`, `hooks/list`, `app/list`

Discover and invoke skills, inspect hooks, and list available apps/connectors.

```json
// List skills for a working directory
{
  "method": "skills/list",
  "id": 25,
  "params": { "cwds": ["/Users/me/project"], "forceReload": true }
}
{
  "id": 25,
  "result": {
    "data": [{
      "cwd": "/Users/me/project",
      "skills": [
        { "name": "skill-creator", "description": "Create or update a Codex skill", "enabled": true, "interface": { "displayName": "Skill Creator", "defaultPrompt": "Add a new skill for triaging flaky CI." } }
      ],
      "errors": []
    }]
  }
}

// Invoke a skill in a turn
{
  "method": "turn/start",
  "id": 33,
  "params": {
    "threadId": "thr_123",
    "input": [
      { "type": "text", "text": "$skill-creator Add a skill for triaging flaky CI." },
      { "type": "skill", "name": "skill-creator", "path": "/Users/me/.codex/skills/skill-creator/SKILL.md" }
    ]
  }
}

// Enable or disable a skill
{ "method": "skills/config/write", "id": 26, "params": { "path": "/Users/me/.codex/skills/skill-creator/SKILL.md", "name": null, "enabled": false } }

// List discovered hooks
{ "method": "hooks/list", "id": 28, "params": { "cwds": ["/Users/me/project"] } }

// List available apps
{ "method": "app/list", "id": 50, "params": { "cursor": null, "limit": 50, "threadId": "thr_123" } }
{
  "id": 50,
  "result": {
    "data": [{ "id": "demo-app", "name": "Demo App", "isAccessible": true, "isEnabled": true, "installUrl": "https://chatgpt.com/apps/demo-app/demo-app" }],
    "nextCursor": null
  }
}

// Invoke an app in a turn
{
  "method": "turn/start",
  "id": 51,
  "params": {
    "threadId": "thr_123",
    "input": [
      { "type": "text", "text": "$demo-app Pull the latest updates from the team." },
      { "type": "mention", "name": "Demo App", "path": "app://demo-app" }
    ]
  }
}
```

---

## App Server Protocol — Goals

### `thread/goal/set`, `thread/goal/get`, `thread/goal/clear`

Attach a persistent objective with an optional token budget to a thread, track status, and remove it.

```json
// Set a goal with a token budget
{
  "method": "thread/goal/set",
  "id": 27,
  "params": {
    "threadId": "thr_123",
    "objective": "Keep improving the benchmark until p95 latency is under 120ms",
    "tokenBudget": 200000
  }
}
{ "id": 27, "result": { "goal": { "threadId": "thr_123", "objective": "...", "status": "active", "tokenBudget": 200000, "tokensUsed": 0, "createdAt": 1776272400, "updatedAt": 1776272400 } } }
{ "method": "thread/goal/updated", "params": { "threadId": "thr_123", "goal": { ... } } }

// Update goal status without changing objective
{ "method": "thread/goal/set", "id": 28, "params": { "threadId": "thr_123", "status": "paused" } }

// Read current goal
{ "method": "thread/goal/get", "id": 29, "params": { "threadId": "thr_123" } }
{ "id": 29, "result": { "goal": { "status": "paused", "tokensUsed": 10000, ... } } }

// Clear goal
{ "method": "thread/goal/clear", "id": 30, "params": { "threadId": "thr_123" } }
{ "id": 30, "result": { "cleared": true } }
{ "method": "thread/goal/cleared", "params": { "threadId": "thr_123" } }
```

---

## App Server Protocol — Config and MCP

### `config/read`, `config/value/write`, `config/batchWrite`, `mcpServerStatus/list`, `config/mcpServer/reload`

Read or patch Codex configuration and manage MCP server connections.

```json
// Read effective config
{ "method": "config/read", "id": 60 }
{ "id": 60, "result": { "config": { "model": "gpt-5.1-codex", "approval_policy": "on-request", ... } } }

// Write a single config key
{ "method": "config/value/write", "id": 61, "params": { "keyPath": "model", "value": "gpt-5.1-codex" } }

// Batch write config and hot-reload loaded threads
{
  "method": "config/batchWrite",
  "id": 62,
  "params": {
    "edits": [
      { "keyPath": "hooks.state", "value": { "/Users/me/.codex/config.toml:pre_tool_use:0:0": { "enabled": false } }, "mergeStrategy": "upsert" }
    ],
    "reloadUserConfig": true
  }
}

// List MCP server statuses
{ "method": "mcpServerStatus/list", "id": 63, "params": { "detail": "full", "limit": 20 } }

// Reload MCP config from disk without restarting
{ "method": "config/mcpServer/reload", "id": 64 }
{ "id": 64, "result": {} }
```

---

## CLI — Sandbox

### `codex sandbox`

Run commands inside Codex's platform-specific sandboxes for testing sandbox policies.

```shell
# macOS Seatbelt sandbox
codex sandbox macos --permissions-profile :workspace -- bash -c "cat /etc/hosts"

# Linux bubblewrap/Landlock sandbox
codex sandbox linux --permissions-profile :workspace -- bash -c "ls /tmp"

# Windows restricted-token sandbox
codex sandbox windows -- cmd /c "dir"
```

---

## CLI — Feature Flags

### `codex features`

Inspect and manage feature flags persistently in `config.toml` or per-session via `--enable`/`--disable`.

```shell
# List all feature flags with stage and current state
codex features list

# Enable a feature flag persistently in config.toml
codex features enable unified_exec

# Disable a feature flag persistently
codex features disable shell_tool

# Enable a feature only for one session (via root flag)
codex --enable unified_exec "run with unified exec enabled"

# Disable for one session
codex --disable unified_exec "run with legacy exec"
```

---

## CLI — MCP Server

### `codex mcp-server` and `codex mcp`

Expose Codex itself as an MCP server, or manage external MCP server configurations.

```shell
# Start Codex as an MCP server (stdio)
codex mcp-server

# List configured MCP servers
codex mcp list

# Add an MCP server
codex mcp add my-server -- my-mcp-server

# Remove an MCP server
codex mcp remove my-server
```

---

## CLI — Plugin Management

### `codex plugin marketplace`

Manage plugin marketplaces — Git repositories that bundle skills, hooks, apps, and MCP servers.

```shell
# Add a plugin marketplace from GitHub
codex plugin marketplace add owner/repo

# Add from a full Git URL
codex plugin marketplace add https://github.com/owner/repo.git

# Upgrade all configured marketplaces
codex plugin marketplace upgrade

# Upgrade a specific marketplace
codex plugin marketplace upgrade my-marketplace

# Remove a marketplace
codex plugin marketplace remove my-marketplace
```

---

## Tracing and Logging

### `RUST_LOG` and `LOG_FORMAT`

```bash
# Monitor the TUI log file in real time
tail -F ~/.codex/log/codex-tui.log

# Run with verbose core logging
RUST_LOG=codex_core=debug,codex_tui=debug codex "explain this module"

# Emit app-server logs as JSON to stderr
LOG_FORMAT=json codex app-server

# Override log directory for one session
codex -c log_dir=./.codex-log "run tests"
```

---

## Summary

Codex CLI serves two primary use cases: it acts as a direct developer productivity tool through its interactive TUI (`codex`) and non-interactive execution mode (`codex exec`), letting engineers describe tasks in natural language and have the agent autonomously write, test, and fix code within configurable sandboxes. For power users and scripts, `codex review` automates code review on commits or diffs and `codex resume`/`codex fork` enable resuming or branching prior sessions. Auth is handled via `codex login` supporting both ChatGPT browser OAuth and API key flows, with credentials persisted locally.

The second and more programmatic use case is building IDE extensions, web interfaces, and custom integrations using the `codex app-server` JSON-RPC 2.0 protocol. Clients open a connection (stdio, WebSocket, or Unix socket), perform the `initialize` handshake, then drive the full Codex agent via thread/turn/item APIs. They receive streaming model output, approval requests, file-change diffs, command output deltas, and lifecycle notifications in real time. The protocol schema is strongly typed — clients can generate TypeScript bindings with `codex app-server generate-ts --out DIR` and JSON Schema with `codex app-server generate-json-schema --out DIR`, both with optional `--experimental` flags to include gated surface area. Experimental features require `capabilities.experimentalApi: true` in the `initialize` request.
