# Codex CLI

Codex CLI is a local coding agent from OpenAI that runs on your computer, enabling AI-assisted code generation, file manipulation, and shell command execution directly from the terminal. It provides both an interactive terminal user interface (TUI) and a non-interactive mode for automation, connecting to OpenAI's models to help with coding tasks while maintaining security through sandboxed execution.

The project consists of a Rust-based core implementation (`codex-rs`) that handles the CLI, TUI, and app-server components, along with a Python SDK (`sdk/python`) for programmatic access. Codex can authenticate via ChatGPT login or API keys, supports MCP (Model Context Protocol) servers for extended tool capabilities, and provides configurable approval policies for command execution and file modifications.

## Installation

Install Codex CLI globally using npm or Homebrew.

```bash
# Install using npm
npm install -g @openai/codex

# Or install using Homebrew
brew install --cask codex

# Run Codex
codex
```

## Python SDK - Basic Usage

The Python SDK provides a typed interface to interact with Codex programmatically through the app-server.

```python
from codex_app_server import Codex

# Create a Codex client (manages lifecycle with context manager)
with Codex() as codex:
    # Get server metadata
    print(f"Server: {codex.metadata.serverInfo.name} v{codex.metadata.serverInfo.version}")

    # Start a new conversation thread
    thread = codex.thread_start(
        model="gpt-5.4",
        config={"model_reasoning_effort": "high"}
    )

    # Send a prompt and get the result
    result = thread.run("Say hello in one sentence.")

    print(f"Response: {result.final_response}")
    print(f"Items count: {len(result.items)}")
    # Output:
    # Response: Hello, how can I assist you today?
    # Items count: 1
```

## Python SDK - Async Usage

The SDK provides full async support for non-blocking operations.

```python
import asyncio
from codex_app_server import AsyncCodex

async def main():
    async with AsyncCodex() as codex:
        # Start a thread asynchronously
        thread = await codex.thread_start(
            model="gpt-5.4",
            config={"model_reasoning_effort": "high"}
        )

        # Run a prompt asynchronously
        result = await thread.run("Explain Python generators in one sentence.")

        print(f"Response: {result.final_response}")
        print(f"Token usage: {result.usage}")

if __name__ == "__main__":
    asyncio.run(main())
```

## Python SDK - Turn-Based Streaming

Stream events in real-time as the model generates responses.

```python
from codex_app_server import Codex, TextInput

with Codex() as codex:
    thread = codex.thread_start(model="gpt-5.4", config={"model_reasoning_effort": "high"})

    # Create a turn with explicit TextInput
    turn = thread.turn(TextInput("Explain SIMD in 3 short bullets."))

    # Stream events as they arrive
    for event in turn.stream():
        if event.method == "turn/started":
            print("Turn started...")
        elif event.method == "item/agentMessage/delta":
            # Print streaming text deltas
            delta = getattr(event.payload, "delta", "")
            if delta:
                print(delta, end="", flush=True)
        elif event.method == "turn/completed":
            status = getattr(event.payload.turn.status, "value", str(event.payload.turn.status))
            print(f"\nCompleted with status: {status}")

    # Output (streaming):
    # Turn started...
    # - SIMD enables parallel processing of multiple data elements in a single instruction
    # - It significantly accelerates numerical computations and multimedia processing
    # - Common implementations include SSE, AVX (x86) and NEON (ARM)
    # Completed with status: completed
```

## Python SDK - Multi-Turn Conversations

Resume existing threads to maintain conversation context.

```python
from codex_app_server import Codex, TextInput

with Codex() as codex:
    # Create initial thread
    thread = codex.thread_start(model="gpt-5.4", config={"model_reasoning_effort": "high"})

    # First turn
    result1 = thread.turn(TextInput("Tell me one fact about Saturn.")).run()
    print(f"Created thread: {thread.id}")

    # Resume the same thread by ID
    resumed = codex.thread_resume(thread.id)

    # Second turn (has context from first)
    result2 = resumed.turn(TextInput("Continue with one more fact.")).run()

    # Read full thread history
    history = resumed.read(include_turns=True)
    print(f"Total turns: {len(history.thread.turns or [])}")
    # Output:
    # Created thread: abc123-def456...
    # Total turns: 2
```

## Python SDK - Image Input

Send images along with text prompts for multimodal analysis.

```python
from codex_app_server import Codex, TextInput, ImageInput, LocalImageInput

with Codex() as codex:
    thread = codex.thread_start(model="gpt-5.4", config={"model_reasoning_effort": "high"})

    # Combine text and remote image URL
    result = thread.turn([
        TextInput("What is in this image? Give 3 bullets."),
        ImageInput("https://example.com/image.png"),
    ]).run()

    print(f"Status: {result.status}")
    print(f"Analysis: {result.final_response}")

    # Or use a local image file
    result_local = thread.turn([
        TextInput("Describe this screenshot."),
        LocalImageInput("/path/to/screenshot.png"),
    ]).run()
```

## Python SDK - Thread Lifecycle Management

Manage threads with archive, unarchive, fork, and list operations.

```python
from codex_app_server import Codex, TextInput

with Codex() as codex:
    # Create and populate a thread
    thread = codex.thread_start(model="gpt-5.4", config={"model_reasoning_effort": "high"})
    thread.turn(TextInput("Hello world")).run()

    # Set a custom name
    thread.set_name("my-demo-thread")

    # List active threads
    active = codex.thread_list(limit=20, archived=False)
    print(f"Active threads: {len(active.data)}")

    # Archive a thread
    codex.thread_archive(thread.id)

    # List archived threads
    archived = codex.thread_list(limit=20, archived=True)
    print(f"Archived threads: {len(archived.data)}")

    # Unarchive and resume
    restored = codex.thread_unarchive(thread.id)
    resumed = codex.thread_resume(restored.id)

    # Fork a thread (creates a copy with shared history)
    forked = codex.thread_fork(thread.id, model="gpt-5.4")
    forked.turn(TextInput("Take a different approach.")).run()

    # Compact a thread (reduce token usage)
    thread.compact()
```

## Python SDK - Turn Controls (Steer and Interrupt)

Modify or cancel turns while they are in progress.

```python
from codex_app_server import Codex, TextInput

with Codex() as codex:
    thread = codex.thread_start(model="gpt-5.4", config={"model_reasoning_effort": "high"})

    # Start a long-running turn
    turn = thread.turn(TextInput("Count from 1 to 100 with commas."))

    # Steer the turn mid-execution with additional guidance
    try:
        turn.steer(TextInput("Actually, stop after 10 numbers."))
    except Exception as e:
        print(f"Steer failed: {e}")

    # Stream until completion
    for event in turn.stream():
        if event.method == "turn/completed":
            print(f"Final status: {event.payload.turn.status}")

    # Example: Interrupt a turn
    long_turn = thread.turn(TextInput("Count from 1 to 1000."))

    # Cancel execution
    try:
        long_turn.interrupt()
    except Exception as e:
        print(f"Interrupt failed: {e}")

    # Drain remaining events
    for event in long_turn.stream():
        if event.method == "turn/completed":
            print(f"Interrupted with status: {event.payload.turn.status}")
```

## Python SDK - Error Handling and Retry

Handle transient errors with automatic retry for server overload conditions.

```python
from codex_app_server import (
    Codex,
    TextInput,
    TurnStatus,
    JsonRpcError,
    ServerBusyError,
    retry_on_overload,
)

with Codex() as codex:
    thread = codex.thread_start(model="gpt-5.4", config={"model_reasoning_effort": "high"})

    try:
        # Wrap operation with automatic retry on overload
        result = retry_on_overload(
            lambda: thread.turn(TextInput("Summarize retry best practices.")).run(),
            max_attempts=3,
            initial_delay_s=0.25,
            max_delay_s=2.0,
        )

        if result.status == TurnStatus.failed:
            print(f"Turn failed: {result.error}")
        else:
            print(f"Response: {result.final_response}")

    except ServerBusyError as e:
        print(f"Server overloaded after retries: {e.message}")

    except JsonRpcError as e:
        print(f"JSON-RPC error {e.code}: {e.message}")
```

## Python SDK - List Available Models

Query available models from the Codex server.

```python
from codex_app_server import Codex

with Codex() as codex:
    # Get available models
    models = codex.models()

    print(f"Available models: {len(models.data)}")
    for model in models.data[:5]:
        print(f"  - {model.id}")

    # Include hidden/internal models
    all_models = codex.models(include_hidden=True)
    print(f"All models (including hidden): {len(all_models.data)}")
```

## Python SDK - Custom Configuration

Configure the SDK with custom paths, environment variables, and client info.

```python
from codex_app_server import Codex, AppServerConfig

# Create custom configuration
config = AppServerConfig(
    # Path to codex binary (optional - auto-detected by default)
    codex_bin="/usr/local/bin/codex",

    # Override configuration values
    config_overrides=("model=gpt-5.4", "sandbox=macos"),

    # Working directory for the server
    cwd="/path/to/project",

    # Custom environment variables
    env={"OPENAI_API_KEY": "sk-..."},

    # Client identification
    client_name="my_app",
    client_title="My Application",
    client_version="1.0.0",

    # Enable experimental API features
    experimental_api=True,
)

with Codex(config=config) as codex:
    print(f"Connected to: {codex.metadata.serverInfo.name}")
    thread = codex.thread_start()
    result = thread.run("Hello!")
    print(result.final_response)
```

## Configuration File

Codex is configured via `~/.codex/config.toml`. This file controls models, sandbox settings, MCP servers, and more.

```toml
# ~/.codex/config.toml

# Default model to use
model = "gpt-5.4"

# Model reasoning effort (low, medium, high)
model_reasoning_effort = "medium"

# Sandbox mode: "macos" (Seatbelt), "docker", or "none"
sandbox = "macos"

# Approval policy: "untrusted", "on-request", or "never"
approval_policy = "on-request"

# Analytics settings
[analytics]
enabled = true

# MCP server configuration
[mcp_servers.docs]
command = "npx"
args = ["-y", "@mcp/docs-server"]

[mcp_servers.docs.tools.search]
approval_mode = "approve"

# App/connector settings
[apps._default]
enabled = true
destructive_enabled = false
open_world_enabled = false

# Feature flags
[features]
child_agents_md = true

# Notification hook (runs when agent finishes)
[notify]
command = "/path/to/notify-script.sh"
```

## CLI Usage

Run Codex interactively or in non-interactive mode for automation.

```bash
# Interactive mode (default) - launches TUI
codex

# Start with an initial prompt
codex "Fix the bug in main.py"

# Non-interactive mode with prompt from stdin
echo "Explain this code" | codex --non-interactive

# Non-interactive with file context
cat error.log | codex -n "What caused this error?"

# Specify model
codex --model gpt-5.4 "Write unit tests"

# Change approval policy
codex --approval-policy on-request "Refactor the database module"

# Override configuration
codex --config model=gpt-5.4 --config sandbox=docker "Deploy to staging"

# Run app-server for programmatic access
codex app-server --listen stdio://

# Run app-server with WebSocket
codex app-server --listen ws://127.0.0.1:8080
```

## AGENTS.md Configuration

Create an `AGENTS.md` file in your project root to provide context-specific instructions to Codex.

```markdown
# AGENTS.md

## Project Overview
This is a Python web application using FastAPI and PostgreSQL.

## Code Style
- Use type hints for all function signatures
- Follow PEP 8 naming conventions
- Maximum line length: 100 characters

## Testing
- Run tests with: `pytest tests/`
- Maintain >80% code coverage

## Database
- Migrations are in `alembic/versions/`
- Run migrations: `alembic upgrade head`

## Important Files
- `app/main.py` - Application entry point
- `app/models/` - SQLAlchemy models
- `app/api/` - API endpoints
```

## App Server Protocol - Thread Operations

The app-server exposes a JSON-RPC API over stdio or WebSocket for programmatic control.

```json
// Start a new thread
// Request:
{
  "id": "1",
  "method": "thread/start",
  "params": {
    "model": "gpt-5.4",
    "cwd": "/path/to/project",
    "sandbox": "macos",
    "config": {
      "model_reasoning_effort": "high"
    }
  }
}

// Response:
{
  "id": "1",
  "result": {
    "thread": {
      "id": "thread_abc123",
      "createdAt": 1699900000,
      "updatedAt": 1699900000
    }
  }
}

// Start a turn (send a message)
// Request:
{
  "id": "2",
  "method": "turn/start",
  "params": {
    "threadId": "thread_abc123",
    "input": [
      {"type": "text", "text": "Explain async/await in Python"}
    ]
  }
}

// Notification (streamed during turn):
{
  "method": "item/agentMessage/delta",
  "params": {
    "turnId": "turn_xyz789",
    "delta": "Async/await in Python allows..."
  }
}

// Notification (turn completed):
{
  "method": "turn/completed",
  "params": {
    "turn": {
      "id": "turn_xyz789",
      "status": "completed"
    }
  }
}
```

## App Server Protocol - Turn Control

Control turn execution with steer and interrupt operations.

```json
// Steer a turn (modify mid-execution)
// Request:
{
  "id": "3",
  "method": "turn/steer",
  "params": {
    "threadId": "thread_abc123",
    "expectedTurnId": "turn_xyz789",
    "input": [
      {"type": "text", "text": "Keep it brief, 3 bullets max"}
    ]
  }
}

// Interrupt a turn (cancel execution)
// Request:
{
  "id": "4",
  "method": "turn/interrupt",
  "params": {
    "threadId": "thread_abc123",
    "turnId": "turn_xyz789"
  }
}

// Response:
{
  "id": "4",
  "result": {
    "turn": {
      "id": "turn_xyz789",
      "status": "interrupted"
    }
  }
}
```

## App Server Protocol - Thread Management

Manage thread lifecycle with archive, resume, fork, and list operations.

```json
// List threads
// Request:
{
  "id": "5",
  "method": "thread/list",
  "params": {
    "limit": 20,
    "archived": false,
    "sortKey": "updated_at"
  }
}

// Response:
{
  "id": "5",
  "result": {
    "data": [
      {
        "id": "thread_abc123",
        "name": "Debug session",
        "createdAt": 1699900000,
        "updatedAt": 1699901000
      }
    ],
    "nextCursor": "cursor_next_page"
  }
}

// Read thread with turns
// Request:
{
  "id": "6",
  "method": "thread/read",
  "params": {
    "threadId": "thread_abc123",
    "includeTurns": true
  }
}

// Fork a thread
// Request:
{
  "id": "7",
  "method": "thread/fork",
  "params": {
    "threadId": "thread_abc123",
    "model": "gpt-5.4"
  }
}

// Archive/unarchive
// Request:
{
  "id": "8",
  "method": "thread/archive",
  "params": {"threadId": "thread_abc123"}
}
```

## Low-Level Client Usage

For advanced use cases, use the lower-level `AppServerClient` directly.

```python
from codex_app_server import AppServerClient, AppServerConfig

config = AppServerConfig(
    client_name="my_automation",
    client_version="1.0.0",
)

with AppServerClient(config=config) as client:
    client.start()
    init = client.initialize()
    print(f"Server: {init.userAgent}")

    # Start thread with raw params
    thread = client.thread_start({"model": "gpt-5.4"})
    thread_id = thread.thread.id

    # Start turn with raw input
    turn = client.turn_start(
        thread_id,
        input_items=[{"type": "text", "text": "Hello!"}],
    )
    turn_id = turn.turn.id

    # Wait for completion
    completed = client.wait_for_turn_completed(turn_id)
    print(f"Turn status: {completed.turn.status}")

    # Stream text deltas
    for delta in client.stream_text(thread_id, "What is 2+2?"):
        print(delta.delta, end="", flush=True)
    print()
```

## Input Types Reference

The SDK provides several input types for different content.

```python
from codex_app_server import (
    TextInput,
    ImageInput,
    LocalImageInput,
    SkillInput,
    MentionInput,
)

# Text input - plain text prompt
text = TextInput("Explain recursion")

# Image input - URL to remote image
image = ImageInput("https://example.com/diagram.png")

# Local image - path to file on disk
local_img = LocalImageInput("/path/to/screenshot.png")

# Skill input - invoke a skill
skill = SkillInput(name="commit", path="/path/to/repo")

# Mention input - reference a file or resource
mention = MentionInput(name="main.py", path="/project/main.py")

# Combine multiple inputs
combined = [
    TextInput("Review this code:"),
    MentionInput(name="app.py", path="/project/app.py"),
    ImageInput("https://example.com/architecture.png"),
]
```

## Error Types Reference

The SDK provides typed exceptions for different error conditions.

```python
from codex_app_server import (
    AppServerError,          # Base exception
    TransportClosedError,    # Connection lost
    JsonRpcError,            # Raw JSON-RPC error
    AppServerRpcError,       # Typed RPC error base
    ParseError,              # -32700: Invalid JSON
    InvalidRequestError,     # -32600: Invalid request
    MethodNotFoundError,     # -32601: Method not found
    InvalidParamsError,      # -32602: Invalid params
    InternalRpcError,        # -32603: Internal error
    ServerBusyError,         # Server overloaded
    RetryLimitExceededError, # Retry budget exhausted
    is_retryable_error,      # Helper to check retryability
)

try:
    result = thread.run("Hello")
except ServerBusyError as e:
    # Transient - retry later
    print(f"Server busy: {e.message}")
except InvalidParamsError as e:
    # Fix the request
    print(f"Bad params: {e.message}")
except TransportClosedError:
    # Reconnect
    print("Connection lost")
except AppServerError as e:
    # Catch-all for SDK errors
    print(f"Error: {e}")
```

## Summary

Codex CLI provides a powerful interface for AI-assisted coding that runs locally while connecting to OpenAI's models. The primary use cases include interactive coding sessions through the TUI, automated code generation and refactoring via the Python SDK, and integration into CI/CD pipelines using non-interactive mode. The thread-based conversation model allows for maintaining context across multiple turns, while features like forking enable exploring different solution paths.

For integration, the Python SDK offers both synchronous and asynchronous clients that communicate with the Codex app-server via JSON-RPC. The app-server can be launched in stdio mode for local embedding or WebSocket mode for remote access. Configuration is flexible through `config.toml`, environment variables, and runtime overrides. The MCP server support enables extending Codex with custom tools, while AGENTS.md files provide project-specific context to improve code generation quality.
