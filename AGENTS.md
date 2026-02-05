# Repository Guidelines

## Project Structure & Module Organization
This repository is documentation-only. All content lives at the repo root.
- `CodexCLI.md`: primary English guide and command reference.
- `junior-codex-cli-cheat-sheet.md`: Traditional Chinese beginner cheat sheet (PowerShell-focused).
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

## Testing Guidelines
No automated tests are present. For content updates:
- Ensure commands are accurate and still supported.
- Check for obvious formatting issues (broken code fences, malformed lists).

## Commit & Pull Request Guidelines
There is no enforced commit convention; existing history uses short, imperative summaries (for example, “Initial commit”, “Add files via upload”). Keep commits concise and scoped to the doc(s) you touched.

For pull requests:
- Describe the documentation change and its motivation.
- Link any relevant issues or external references.
- Include screenshots only if the change relies on a rendered view.

## Agent-Specific Notes
If you are using Codex or other agents, keep edits minimal, avoid rewriting unrelated sections, and follow the file’s existing tone and language.
