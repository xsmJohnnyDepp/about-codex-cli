# Codex CLI 技術分享議程

這份議程用來安排內部技術分享的主線。目標不是把所有功能講完，而是讓同事先理解 Codex CLI 的基本概念，能開始安全地使用，並看懂進階功能如 `AGENTS.md`、skill、agent 的定位。

## 分享目標

- 了解 Codex CLI 是什麼，以及它和一般聊天式 AI 工具的差異。
- 理解 token、context window、agent、上下文管理等基本概念。
- 學會在 Windows + PowerShell 環境中啟動、提問、引用檔案、檢查 diff。
- 透過兩個 green field lab 看懂「如何把需求交給 Codex」。
- 建立進階觀念：`AGENTS.md`、skill、agent、MCP / plugin 各自解決什麼問題。

## 建議流程

### 1. 開場：為什麼要用 Codex CLI

重點：

- Codex CLI 是在本機終端機中運作的 coding agent。
- 它可以讀檔、修改檔案、執行 shell 指令，並根據結果迭代。
- 使用時要把它當成一位會操作工作區的協作者，而不是只會回答問題的聊天工具。

可用一句話說明：

> Codex CLI 的價值不是只幫你產生文字，而是能在專案裡讀、改、跑、驗證，協助完成實際開發任務。

### 2. 背景知識

對應文件：`background.md`

重點：

- Codex CLI 是會在本機工作目錄中讀檔、改檔、執行命令的 agent，不只是聊天工具。
- Codex 不會一開始就自動理解整個專案，而是透過需求、`AGENTS.md`、檔案內容和工具輸出建立上下文。
- 使用 Markdown 格式寫提示，可以更清楚區分目標、範圍、限制和驗收條件。
- `token` 是模型處理文字的基本單位，不等於一個中文字或一個英文單字。
- `context window` 是模型一次工作時能同時參考的 token 空間。
- 長需求、長 log、大量檔案、長對話都會消耗 context。
- `git status`、`git diff`、測試輸出、錯誤訊息等工具結果也會占用 context。
- `/compact` 的用途是壓縮前文，釋放 context 空間。
- `AGENTS.md` 可以放專案規則，避免每次重複貼同樣指示。
- 使用者仍然要負責 review Codex 的輸出，尤其是檔案修改、命令執行和具有時效性的資訊。

建議提醒：

- 不要一次把整個專案都丟給 Codex。
- 先描述目標，再讓 Codex 用 `rg`、`git diff`、目錄結構去找相關檔案。
- 不要貼密碼、API key、cookie、token 或客戶資料。
- 修改後用 `/diff` 或 `git diff` 檢查實際變更。
- 任務變長時，用 `/status` 觀察 session 狀態。

### 3. 快速上手

對應文件：`junior-codex-cli-cheat-sheet.md`

重點：

- 啟動互動模式：

```powershell
codex
```

- 直接帶需求啟動：

```powershell
codex "請幫我解釋這個專案"
```

- 指定工作目錄：

```powershell
codex -C .\my-project "分析這個專案"
```

- 附加圖片：

```powershell
codex -i .\screenshot.png "修正這個 UI 問題"
```

- 常用互動指令：

```text
/status       查看目前 session 狀態
/diff         查看 Codex 造成的 Git 變更
/mention      附加檔案或資料夾
/compact      壓縮長對話
/new          開始新對話
/review       讓 Codex 檢視工作樹
/init         產生 AGENTS.md 範本
```

建議示範順序：

1. 啟動 `codex`。
2. 用 `/status` 看目前模型與 session 狀態。
3. 用 `@` 或 `/mention` 引用一個檔案。
4. 請 Codex 做一個小修改。
5. 用 `/diff` 檢查變更。

### 4. Green Field 示範一：台灣身分證規則 Lab

對應資料夾：`labs/lab 1/`

示範目標：

- 讓 Codex 從明確規則出發，產生一個小型實作。
- 練習把任務拆成「目標、範圍、限制、驗收條件」。
- 示範完成後如何檢查產出，而不是直接相信結果。

建議講法：

- 先給 Codex 清楚規則與輸出格式。
- 要求 Codex 說明它的檢查邏輯。
- 要求產生測試案例或驗證清單。
- 用 `/diff` 檢查它改了哪些檔案。

### 5. Green Field 示範二：首頁改版素材整理 Lab

對應資料夾：`labs/lab 2/`

示範目標：

- 展示 Codex 處理文件、素材與需求整理的能力。
- 練習讓 Codex 區分第一方資料、外部參考、推測內容。
- 示範如何保留來源文字，避免直接混寫成正式文案。

建議講法：

- 先讓 Codex 做 source gathering，不急著改文案。
- 要求它標記：
  - `外部參考`
  - `推測`
  - `來源：圖片 OCR，需人工複核`
- 再請它整理成首頁改版可用的素材清單。

### 6. 進階一：AGENTS.md

重點：

- `AGENTS.md` 是給 Codex 的專案工作規則。
- 它不是程式碼，也不是一個 agent。
- 適合放團隊固定規範，例如語言、測試方式、命名規則、禁止事項、常用指令。

可用比喻：

> `AGENTS.md` 像是專案的工作手冊。Codex 進入專案後，會先知道這個團隊希望它怎麼做事。

建議內容：

```markdown
# AGENTS.md

## 專案目的
這個專案是內部訓練教材，不是產品程式碼。

## 溝通語言
請使用繁體中文回覆。

## 修改原則
- 保持修改範圍最小。
- 不要重寫無關段落。
- 修改 Markdown 時保持既有語氣。
```

### 7. 進階二：Skill

重點：

- skill 是可重複使用的工作流程知識。
- 它適合封裝「常常會做、而且有固定規則」的任務。
- skill 通常會包含觸發條件、操作步驟、要讀的參考資料、可重用腳本或範本。

Codex CLI 內建 skill 可示範：

| Skill | 適合示範什麼 |
| --- | --- |
| `skill-creator` | 建立自己的 skill，最適合現場 demo。 |
| `skill-installer` | 從 OpenAI curated skills 或 GitHub repo 安裝 skill。 |
| `openai-docs` | 查 OpenAI 官方文件，適合示範「帶來源的文件查詢」。 |
| `plugin-creator` | 建立 Codex plugin，屬於更進階主題。 |
| `imagegen` | 產生或編輯圖片，若分享主題不是視覺素材可略過。 |

最推薦現場示範：

```text
$skill-creator
```

可以請 Codex 建立一個「公司內部 Markdown 文件改寫規則」或「lab prompt 產生器」skill。這比直接安裝很多第三方 skill 更容易讓同事理解 skill 的價值。

官方與社群來源：

| 來源 | 定位 |
| --- | --- |
| OpenAI Codex Skills 文件 | Codex 如何使用 skills、儲存位置、啟用方式、建立方式。 |
| `openai/skills` GitHub repo | OpenAI 官方 skills catalog，包含 `.system`、`.curated`、`.experimental`。 |
| `agentskills.io` | Agent Skills open standard，說明 `SKILL.md`、`scripts/`、`references/`、`assets/` 格式。 |
| `skills.sh` | 社群 marketplace / leaderboard，適合探索靈感，但不是 Codex 官方來源。 |

常見安裝方式：

```text
$skill-installer linear
```

從 OpenAI curated skills 安裝指定 skill。

```text
$skill-installer install https://github.com/openai/skills/tree/main/skills/.experimental/create-plan
```

從 GitHub 目錄安裝指定 skill。安裝後如果沒有馬上出現，重啟 Codex。

若從 `skills.sh` 探索 skill，網站通常會提供類似指令：

```powershell
npx skills add vercel-labs/agent-skills
```

提醒：

- `skills.sh` 是社群目錄，安裝前要檢查來源 repo、`SKILL.md`、`scripts/`、license。
- skill 可能包含可執行腳本，不能把它當成單純文字片段。
- 公司內部落地時，優先把團隊自己的 SOP 做成 repo-scoped skill，放在 `.agents/skills`。

適合做成 skill 的例子：

- 依公司格式產生 release note。
- 依團隊規範做 PR review。
- 整理 Azure 診斷報告。
- 把某種固定格式的需求轉成 lab prompt。
- 依公司文件風格改寫 Markdown。

不適合一開始就做成 skill 的例子：

- 只做一次的小任務。
- 規則還不穩定的流程。
- 需要大量人工判斷、還沒形成 SOP 的工作。

可用比喻：

> skill 像是給 Codex 的任務 SOP。當任務符合條件時，Codex 可以載入這份 SOP，照團隊期待的方式執行。

一句話版本：

> 不要把 skill 當成神奇外掛；它本質上是可版本控管的 SOP。初學先看 OpenAI 官方 curated skills，進階再用 `agentskills.io` 的規格做自己的團隊 skill，`skills.sh` 則當作社群靈感來源。

### 8. 進階三：Agent

重點：

- Codex CLI 本身就是一個 coding agent。
- agent 的核心特徵是：可以規劃、使用工具、觀察結果，然後決定下一步。
- 在 Codex CLI 分享中，不建議把 agent 講成另一個必學指令；比較適合把它當成架構概念。
- 目前本機 `codex --help` 有 `plugin`、`mcp`、`app-server` 等子命令，但沒有獨立的 `codex agent` 子命令。
- 互動模式中若看到 `/agent`，可以把它視為進階或實驗性入口，不放在初學者主線。

建議用這張表說明：

| 名詞 | 簡單解釋 |
| --- | --- |
| Codex agent | 會在本機專案中讀檔、改檔、跑指令、迭代的 AI 工作單位。 |
| `AGENTS.md` | 專案規則與團隊工作守則。 |
| skill | 可重複使用的任務 SOP。 |
| MCP / plugin | 讓 Codex 接上外部工具、服務或額外能力的擴充方式。 |
| Agents SDK | 用來自己開發 agentic app 的 SDK，和 Codex CLI 日常使用不是同一層。 |

可用比喻：

```text
Codex agent = 會做事的人
AGENTS.md = 這個專案的工作規則
skill = 某類任務的 SOP
MCP / plugin = 可以接上的工具或外部系統
```

### 9. 收尾：建議日常工作流

建議給同事的基本流程：

1. 先把專案規則寫進 `AGENTS.md`。
2. 每次任務先講清楚目標、範圍、限制、驗收條件。
3. 讓 Codex 先找相關檔案，不要一次貼整包內容。
4. 小步修改，小步檢查。
5. 每次改完用 `/diff` 或 Git 工具檢查。
6. 對重複流程再整理成 skill。

最後一句話：

> 初學 Codex CLI 先學會「清楚交代任務、檢查輸出、控制範圍」；進階之後，再用 `AGENTS.md` 和 skill 把團隊工作流程固定下來。

## 時間安排參考

| 段落 | 建議時間 |
| --- | --- |
| 開場與使用情境 | 5 分鐘 |
| 背景知識 | 10 分鐘 |
| 快速上手 | 15 分鐘 |
| Green Field 示範一 | 20 分鐘 |
| Green Field 示範二 | 20 分鐘 |
| `AGENTS.md`、skill、agent | 20 分鐘 |
| Q&A | 10 分鐘 |
