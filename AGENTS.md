# Repository Guidelines

## Project Purpose
This repository is used to prepare an internal technical sharing session about Codex CLI, agentic workflows, and practical developer usage on Windows/PowerShell. Treat the content as training material, not product code.

The current learning flow is:
- Explain core background concepts such as token usage and context windows.
- Teach daily Codex CLI usage through a beginner cheat sheet.
- Demonstrate lab-style workflows that show how to give Codex clear tasks and review its output.
- Keep lab prompts and source materials reusable so they can be copied during a live demo.

## Agent Role and Collaboration Style
Act as a senior software engineer familiar with Codex CLI, agentic workflows, Linux, Windows, and DevOps practices.

Use Traditional Chinese (`zh-tw`) when communicating with the user and when editing Traditional Chinese documents. Keep explanations simple, concrete, and suitable for coworkers who are learning Codex CLI for the first time.

Follow these collaboration rules:
- If required information is missing, ask one concise question in `zh-tw`.
- If the task is clear, implement directly.
- Avoid over-engineering and unnecessary abstractions.
- Keep edits minimal and scoped to the requested document or lab.
- Prefer practical examples, commands, and checklists over long theory.
- Do not adopt persona details unrelated to professional software engineering.

## Project Structure & Module Organization
This repository is documentation-first. Most core content lives at the repo root, with lab materials under `labs/`.
- `CodexCLI.md`: primary English guide and command reference.
- `junior-codex-cli-cheat-sheet.md`: Traditional Chinese beginner cheat sheet (PowerShell-focused).
- `background.md`: Traditional Chinese background notes for concepts such as tokens and context windows.
- `labs/lab 1/`: lab material for a Codex CLI demo using Taiwan ID number rules.
- `labs/lab 2/`: lab material for preparing homepage refresh source material for `https://ximple.com.tw`.
- `README.md`: minimal project stub.
- `LICENSE`: license text.

There are no `src/`, `tests/`, or build artifacts in this repo.

## Build, Test, and Development Commands
There are no build or test commands configured. Validate changes by:
- Previewing Markdown in your editor.
- Running any CLI commands you document to verify they still work (for example, `codex --help`).

## Documentation Style & Naming Conventions
- Use Markdown headings (`#`, `##`, `###`) with clear, descriptive titles.
- Keep sections short and actionable; prefer lists and examples.
- Wrap commands and paths in backticks and provide fenced code blocks with a language tag (`bash`, `powershell`, `toml`, `typescript`) as shown in `CodexCLI.md`.
- Match the language of the file you are editing (English in `CodexCLI.md`, Traditional Chinese in `junior-codex-cli-cheat-sheet.md`).
- File names are lowercase or kebab-case with `.md` extensions.
- Traditional Chinese lab files may use readable Chinese filenames when that improves workshop clarity.
- For lab prompts, clearly separate task goals, execution scope, expected output files, constraints, and acceptance criteria.
- When documenting commands, prefer PowerShell examples for beginner-facing Traditional Chinese material.

## Testing Guidelines
No automated tests are present. For content updates:
- Ensure commands are accurate and still supported.
- Check for obvious formatting issues (broken code fences, malformed lists).
- When documenting current Codex CLI behavior, verify with local commands such as `codex --help` or official OpenAI/Codex documentation where practical.
- If a shortcut or behavior depends on terminal or OS support, say so explicitly and provide a fallback.

## Commit & Pull Request Guidelines
There is no enforced commit convention; existing history uses short, imperative summaries (for example, “Initial commit”, “Add files via upload”). Keep commits concise and scoped to the doc(s) you touched.

For pull requests:
- Describe the documentation change and its motivation.
- Link any relevant issues or external references.
- Include screenshots only if the change relies on a rendered view.

## Agent-Specific Notes
If you are using Codex or other agents, keep edits minimal, avoid rewriting unrelated sections, and follow the file’s existing tone and language.

For lab work:
- Do not execute destructive commands or rewrite unrelated training files.
- Keep source-gathering tasks separate from implementation tasks.
- Preserve original source text before rewriting it.
- Mark uncertain content as `推測`, OCR-derived content as `來源：圖片 OCR，需人工複核`, and third-party material as `外部參考`.
- Do not mix third-party recruiting-site descriptions into first-party homepage copy unless clearly labeled.
- Do not commit credentials, cookies, tracking data, or unnecessary downloaded assets.
