# Codex CLI

Codex CLI is a local coding agent from OpenAI that runs directly on your computer. It provides an interactive terminal user interface (TUI) and non-interactive execution modes for AI-assisted software development. The agent can read, write, and execute code in a sandboxed environment with configurable security policies, making it suitable for automated development workflows, code reviews, and complex coding tasks.

The CLI is built in Rust and supports multiple authentication methods including ChatGPT login and API keys. It integrates with MCP (Model Context Protocol) servers for extended tool capabilities, supports session persistence for resuming conversations, and provides comprehensive configuration options through TOML files. Codex CLI can operate in various approval modes from fully automated to manual confirmation for each action.

## Installation

Install Codex CLI globally using npm or Homebrew.

```bash
# Install using npm
npm install -g @openai/codex

# Install using Homebrew
brew install --cask codex

# Or download platform-specific binaries from GitHub releases:
# macOS Apple Silicon: codex-aarch64-apple-darwin.tar.gz
# macOS x86_64: codex-x86_64-apple-darwin.tar.gz
# Linux x86_64: codex-x86_64-unknown-linux-musl.tar.gz
# Linux arm64: codex-aarch64-unknown-linux-musl.tar.gz
```

## Interactive Mode

The default interactive TUI mode launches a full-screen terminal interface for conversational coding sessions.

```bash
# Start interactive session
codex

# Start with an initial prompt
codex "explain this codebase to me"

# Start with a specific model
codex -m gpt-4o "write unit tests for src/main.rs"

# Start with images attached
codex -i screenshot.png "fix the UI issue shown in this screenshot"

# Use full-auto mode (auto-approve all actions in workspace)
codex --full-auto "refactor the authentication module"

# Use a specific configuration profile
codex -p my-profile "implement the feature"

# Enable web search capability
codex --search "what's the latest version of React and update package.json"

# Start in a specific working directory
codex -C /path/to/project "analyze this project"
```

## Non-Interactive Exec Mode

Run Codex non-interactively for CI/CD pipelines, scripts, and automated workflows. Output can be plain text or JSON Lines format.

```bash
# Basic non-interactive execution
codex exec "add error handling to all API endpoints"

# Execute with JSON output for parsing
codex exec --json "list all TODO comments in the codebase"

# Pipe prompt from stdin
echo "fix all linting errors" | codex exec -

# Execute with a specific model
codex exec -m gpt-4o "optimize database queries"

# Full-auto mode (no approval prompts)
codex exec --full-auto "update all dependencies to latest versions"

# Bypass all approvals and sandboxing (use with caution)
codex exec --yolo "run the migration script"

# Save last message to file
codex exec --last-message-file output.txt "generate API documentation"

# Use output schema for structured responses
codex exec --output-schema schema.json "extract all function signatures"

# Skip git repository check for non-repo directories
codex exec --skip-git-repo-check "analyze these files"

# Add additional writable directories
codex exec --add-dir /tmp/output "generate reports"
```

## Code Review

Run automated code reviews on commits, branches, or uncommitted changes.

```bash
# Review uncommitted changes
codex review --uncommitted

# Review changes against a base branch
codex review --base main

# Review a specific commit
codex review --commit abc123

# Review with a custom commit title for context
codex review --commit abc123 --commit-title "Add user authentication"

# Custom review instructions
codex review "focus on security vulnerabilities and SQL injection risks"
```

## Session Management

Resume or fork previous interactive sessions to continue work.

```bash
# Show session picker to resume
codex resume

# Resume the most recent session
codex resume --last

# Resume a specific session by ID
codex resume 123e4567-e89b-12d3-a456-426614174000

# Resume a session by name
codex resume my-feature-branch

# Show all sessions (including from other directories)
codex resume --all

# Fork a session to branch off
codex fork --last

# Fork a specific session
codex fork 123e4567-e89b-12d3-a456-426614174000

# Resume in exec mode
codex exec resume --last "continue with the next task"
```

## Authentication

Manage login credentials for ChatGPT or API access.

```bash
# Interactive login with ChatGPT (recommended)
codex login

# Login using device code flow
codex login --device-auth

# Login with API key from environment variable
printenv OPENAI_API_KEY | codex login --with-api-key

# Check login status
codex login status

# Remove stored credentials
codex logout
```

## Configuration

Configure Codex behavior through `~/.codex/config.toml`. The configuration supports profiles for different use cases.

```toml
# ~/.codex/config.toml

# Default model selection
model = "gpt-4o"

# Approval policy: "untrusted", "on-failure", "on-request", "never"
approval_policy = "on-failure"

# Sandbox mode: "read-only", "workspace-write", "danger-full-access"
sandbox_mode = "workspace-write"

# System instructions for the model
instructions = "You are a helpful coding assistant. Always explain your changes."

# Model reasoning configuration
model_reasoning_effort = "medium"
model_reasoning_summary = "concise"

# History settings
[history]
persistence = "save-all"
max_bytes = 10485760

# TUI settings
[tui]
animations = true
notifications = true
alternate_screen = "auto"

# Analytics (opt-out by setting to false)
[analytics]
enabled = true

# Named profiles for different workflows
[profiles.ci]
model = "gpt-4o-mini"
approval_policy = "never"
sandbox_mode = "workspace-write"

[profiles.review]
model = "gpt-4o"
approval_policy = "on-request"

# MCP server configuration
[mcp_servers.filesystem]
command = "npx"
args = ["-y", "@modelcontextprotocol/server-filesystem", "/path/to/allowed/dir"]

[mcp_servers.github]
command = "npx"
args = ["-y", "@modelcontextprotocol/server-github"]
env = { GITHUB_TOKEN = "your-token" }

# Custom model provider for local models
[model_providers.ollama]
name = "Ollama"
base_url = "http://localhost:11434/v1/"
env_key = "OLLAMA_API_KEY"
wire_api = "chat"

# Sandbox workspace write configuration
[sandbox_workspace_write]
writable_roots = ["/tmp/codex-output"]
network_access = false
```

## CLI Configuration Overrides

Override configuration options directly from the command line.

```bash
# Override model
codex -c model=gpt-4o "your prompt"

# Override multiple settings
codex -c model=gpt-4o -c approval_policy=never "your prompt"

# Enable feature flags
codex --enable web_search "search for latest npm packages"

# Disable feature flags
codex --disable unified_exec "your prompt"

# Use specific sandbox mode
codex --sandbox workspace-write "modify files in workspace"

# Set approval policy
codex --ask-for-approval on-request "make changes"

# Use OSS/local models
codex --oss --local-provider ollama "your prompt"
```

## MCP Server Integration

Run Codex as an MCP server or manage MCP server connections.

```bash
# Run Codex as an MCP server (stdio transport)
codex mcp-server

# List configured MCP servers
codex mcp list

# Add an MCP server
codex mcp add my-server --command npx --args "-y,@modelcontextprotocol/server-example"

# Remove an MCP server
codex mcp remove my-server

# Enable/disable an MCP server
codex mcp enable my-server
codex mcp disable my-server
```

## Sandbox Commands

Debug and test sandbox configurations.

```bash
# Run command under macOS Seatbelt sandbox
codex sandbox macos -- ls -la

# Run command under Linux Landlock sandbox
codex sandbox linux -- cat /etc/passwd

# Run command under Windows restricted token
codex sandbox windows -- dir
```

## Apply Command

Apply the latest diff produced by Codex agent to your working tree.

```bash
# Apply the most recent diff
codex apply

# Apply from a specific session
codex apply --session 123e4567-e89b-12d3-a456-426614174000
```

## Feature Flags

Manage experimental feature flags.

```bash
# List all features with their status
codex features list

# Enable a feature in config.toml
codex features enable web_search

# Disable a feature in config.toml
codex features disable unified_exec
```

## Shell Completions

Generate shell completion scripts for your shell.

```bash
# Generate bash completions
codex completion bash > /etc/bash_completion.d/codex

# Generate zsh completions
codex completion zsh > ~/.zfunc/_codex

# Generate fish completions
codex completion fish > ~/.config/fish/completions/codex.fish
```

## Environment Variables

Configure Codex behavior through environment variables.

```bash
# Set OpenAI API key
export OPENAI_API_KEY="sk-..."

# Configure logging verbosity
export RUST_LOG=codex_core=debug,codex_tui=info

# Monitor TUI logs in real-time
tail -F ~/.codex/log/codex-tui.log
```

## App Server Protocol (v2)

The app-server provides a JSON-RPC based protocol for IDE integrations. TypeScript type definitions are available for building clients.

```typescript
// Import generated types from codex-rs/app-server-protocol/schema/typescript/v2/

import type { ThreadStartParams, ThreadStartResponse } from './v2/ThreadStartParams';
import type { TurnStartParams, TurnStartResponse } from './v2/TurnStartParams';
import type { ConfigReadParams, ConfigReadResponse } from './v2/ConfigReadParams';

// Start a new thread
const startParams: ThreadStartParams = {
  cwd: '/path/to/project',
  model: 'gpt-4o',
};

// Start a turn within a thread
const turnParams: TurnStartParams = {
  threadId: 'thread-uuid',
  items: [{ type: 'text', text: 'Implement the feature' }],
};

// Read configuration
const configParams: ConfigReadParams = {
  keys: ['model', 'approval_policy', 'sandbox_mode'],
};
```

## Building from Source

Build Codex CLI from source using Rust and Cargo.

```bash
# Clone and build
git clone https://github.com/openai/codex.git
cd codex/codex-rs

# Install Rust toolchain
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"
rustup component add rustfmt clippy

# Install helper tools
cargo install just
cargo install cargo-nextest

# Build
cargo build

# Run from source
cargo run --bin codex -- "your prompt"

# Format and lint
just fmt
just fix -p codex-tui

# Run tests
cargo test -p codex-tui
just test
cargo test --all-features
```

## Summary

Codex CLI serves developers who need AI-powered coding assistance directly in their terminal. The primary use cases include interactive coding sessions through the TUI, automated code generation and modification in CI/CD pipelines via exec mode, and automated code reviews. The tool integrates seamlessly with existing development workflows through git integration, session persistence, and configurable security policies.

For integration patterns, Codex CLI can be embedded into automated workflows using the exec mode with JSON output for machine parsing. IDE extensions can communicate with the app-server using the v2 protocol over JSON-RPC. MCP server support enables extending Codex with custom tools and data sources. The configuration system supports profiles for switching between different workflows (development, CI, code review) with appropriate security and approval settings for each context.
