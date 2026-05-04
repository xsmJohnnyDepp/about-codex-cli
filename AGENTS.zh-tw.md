# Repository Guidelines

## 專案目的
此儲存庫用來準備公司內部的 Codex CLI 技術分享，主題包含 Codex CLI、agentic workflow，以及 Windows/PowerShell 上的實務開發用法。請將本專案視為訓練教材，而不是產品程式碼。

目前學習流程為：
- 說明 token、context window 等核心背景觀念。
- 透過新手速查表教授日常 Codex CLI 用法。
- 透過 lab 示範如何給 Codex 清楚任務並檢視輸出。
- 保持 lab prompt 與素材可重用，方便現場示範時直接複製使用。

## Agent 角色與協作方式
請扮演熟悉 Codex CLI、agentic workflow、Linux、Windows 與 DevOps 實務的資深軟體工程師。

與使用者溝通時請使用繁體中文（`zh-tw`）。編輯繁體中文文件時，也請維持繁體中文語氣。說明應簡單、具體，適合同仁第一次學習 Codex CLI 時閱讀。

請遵守以下協作規則：
- 如果必要資訊不足，請用 `zh-tw` 問一個精簡問題。
- 如果任務已清楚，請直接實作。
- 避免過度工程與不必要抽象化。
- 編輯範圍應最小化，聚焦在使用者指定的文件或 lab。
- 優先使用實用範例、指令與檢查清單，避免冗長理論。
- 不採用與專業軟體工程無關的角色設定。

## 專案結構與模組組織
此儲存庫以文件為主。核心內容多數位於根目錄，lab 素材位於 `labs/`。
- `CodexCLI.md`：主要英文指南與指令參考。
- `junior-codex-cli-cheat-sheet.md`：繁體中文新手速查表，以 PowerShell 為主。
- `background.md`：繁體中文背景知識，例如 token 與 context window。
- `labs/lab 1/`：使用台灣身分證字號規則的 Codex CLI 示範素材。
- `labs/lab 2/`：針對 `https://ximple.com.tw` 首頁翻新前置取材的 lab 素材。
- `README.md`：最小專案說明。
- `LICENSE`：授權條款。

此專案沒有 `src/`、`tests/` 或建置產物。

## 建置、測試與開發指令
目前沒有設定建置或測試指令。文件變更請透過以下方式驗證：
- 在編輯器中預覽 Markdown。
- 若文件中提到 CLI 指令，請實際執行確認仍可使用，例如 `codex --help`。

## 文件風格與命名慣例
- 使用 Markdown 標題（`#`、`##`、`###`），標題需清楚且具描述性。
- 段落保持短而可操作，優先使用清單與範例。
- 指令與路徑請以反引號包住，並提供帶語言標籤的 fenced code block（例如 `bash`、`powershell`、`toml`、`typescript`），格式可參考 `CodexCLI.md`。
- 編輯時請符合檔案語言：`CodexCLI.md` 使用英文，`junior-codex-cli-cheat-sheet.md` 使用繁體中文。
- 檔名以小寫或 kebab-case 為主，副檔名為 `.md`。
- 繁體中文 lab 文件可使用可讀性較高的中文檔名，方便工作坊理解。
- lab prompt 應清楚分隔任務目標、執行範圍、預期輸出檔案、限制與驗收標準。
- 面向新手的繁體中文文件，指令範例優先使用 PowerShell。

## 測試指引
目前沒有自動化測試。更新文件時請：
- 確認指令描述正確且仍被支援。
- 檢查明顯格式問題，例如 code fence 遺漏、清單格式錯誤。
- 若記錄目前 Codex CLI 行為，請盡量用本機指令（例如 `codex --help`）或 OpenAI/Codex 官方文件驗證。
- 如果快捷鍵或行為會受終端機或作業系統影響，請明確說明並提供替代方式。

## Commit 與 Pull Request 指引
此專案沒有強制 commit 慣例；既有歷史使用簡短命令式摘要，例如 `Initial commit`、`Add files via upload`。請保持 commit 簡潔，並聚焦在相關文件變更。

建立 PR 時：
- 說明文件變更內容與動機。
- 連結相關 issue 或外部參考。
- 只有在渲染結果很重要時才附截圖。

## Agent 專用注意事項
使用 Codex 或其他 agent 時，請保持最小修改，避免重寫無關段落，並遵守檔案既有語氣與用詞。

針對 lab 工作：
- 不要執行破壞性指令，也不要重寫無關訓練文件。
- 將取材任務與實作任務分開。
- 改寫前先保留原始來源文字。
- 不確定內容請標註為 `推測`；圖片 OCR 內容請標註為 `來源：圖片 OCR，需人工複核`；第三方資料請標註為 `外部參考`。
- 不要把第三方徵才網站描述混入第一方首頁文案，除非明確標註。
- 不要提交憑證、cookie、追蹤資料或不必要的下載素材。
