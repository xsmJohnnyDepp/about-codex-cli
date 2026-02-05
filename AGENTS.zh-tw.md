# Repository Guidelines

## Project Structure & Module Organization
此倉庫為純文件專案，所有檔案位於根目錄：
- `CodexCLI.md`: 主要英文指南與指令參考。
- `junior-codex-cli-cheat-sheet.md`: 繁體中文新手速查（PowerShell 為主）。
- `README.md`: 簡要專案說明。
- `LICENSE`: 授權條款。

本專案沒有 `src/`、`tests/` 或建置產物。

## Build, Test, and Development Commands
未提供建置或測試指令。文件變更請自行驗證：
- 在編輯器中預覽 Markdown。
- 若文件含指令，請實際執行確認仍可用（例如 `codex --help`）。

## Documentation Style & Naming Conventions
- 使用 Markdown 標題（`#`, `##`, `###`），標題需清楚具體。
- 段落保持精簡可操作，優先用清單與範例。
- 指令與路徑請用反引號包住，並提供帶語言標籤的程式碼區塊（`bash`, `powershell`, `toml`, `typescript`），格式請對齊 `CodexCLI.md`。
- 編輯時保持檔案語系一致（`CodexCLI.md` 用英文，`junior-codex-cli-cheat-sheet.md` 用繁中）。
- 檔名使用小寫或 kebab-case，副檔名為 `.md`。

## Testing Guidelines
目前沒有自動化測試。更新文件時請：
- 確認指令描述正確且仍被支援。
- 檢查格式問題（例如 code fence 遺漏、清單格式錯誤）。

## Commit & Pull Request Guidelines
沒有硬性 commit 規範；現有歷史為簡短命令式摘要（例如 “Initial commit”、“Add files via upload”）。請維持簡潔並僅包含相關文件變更。

提交 PR 時：
- 說明變更內容與動機。
- 連結相關議題或外部參考。
- 只有在渲染結果重要時才附截圖。

## Agent-Specific Notes
若使用 Codex 或其他代理，請維持最小改動，避免重寫無關段落，並遵守檔案既有語氣與用詞。
