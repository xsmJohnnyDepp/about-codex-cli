# Codex CLI 新手 Cheat Sheet（PowerShell 版）

**適用環境**
Windows + PowerShell，內容以 `codex-cli 0.131.0` 為準。可用 `codex --version` 確認本機版本。

**快速開始**
1. 啟動互動模式（最常用）
```powershell
# 啟動 Codex CLI 互動介面
codex
```
2. 直接帶一句需求
```powershell
# 啟動並附帶初始提示
codex "請幫我解釋這個專案"
```

**安裝、更新與登入**
1. 安裝
```powershell
# 使用 npm 全域安裝
npm install -g @openai/codex
```
2. 更新
```powershell
# 更新到最新版 Codex CLI
codex update
```
3. 登入與狀態
```powershell
# 互動式登入（建議）
codex login

# 查看登入狀態
codex login status

# 登出
codex logout
```

**互動模式常用指令**
1. 指定模型
```powershell
# 指定模型啟動；可依公司帳號可用模型調整
codex -m gpt-5.4 "幫我重構這段程式碼"
```
2. 附加圖片
```powershell
# 帶入截圖或圖片檔
codex -i .\screenshot.png "修正 UI 問題"
```
3. 指定 sandbox
```powershell
# 允許 Codex 修改工作區內檔案
codex --sandbox workspace-write "整理這個模組的結構"
```
4. 啟用即時搜尋
```powershell
# 讓模型可使用內建 web_search 工具
codex --search "整理最近的 release notes 重點"
```
5. 指定工作目錄
```powershell
# 以指定目錄作為工作區
codex -C .\my-project "分析這個專案"
```
6. 引用檔案（@ 或 /mention）
```powershell
# 在互動提示中用 @ 引用檔案
請讀取 @src\app.ts 並解釋主要流程
```

**互動輸入小技巧**
```powershell
Enter    送出目前提示
Ctrl+J   插入換行，適合輸入多行需求
@        搜尋並引用工作區內的檔案或資料夾
Alt+V    貼上剪貼簿圖片；若終端不支援，改用 -i 或圖片檔路徑
Ctrl+C   中斷目前動作或離開 CLI
```
圖片貼上會受作業系統、終端機與剪貼簿格式影響。Windows + PowerShell 可先試 `Alt+V`；若沒有成功，建議把截圖存成 `.png` 後用 `codex -i .\screenshot.png "你的提示"`，或在對話中直接提供圖片檔路徑。

**互動模式內建命令（/）**
1. 叫出清單
```powershell
# 在 composer 內輸入 / 叫出指令清單並可搜尋
/
```
2. 必學指令
```
/model        切換模型
/permissions  變更核准/權限模式（例如 Auto / Read Only）
/status       查看目前 session 狀態（模型/核准策略/可寫目錄/token）
/diff         顯示 Git 變更（含未追蹤檔案）
/mention      附加檔案或資料夾到對話
/compact      壓縮長對話摘要以節省 context
/new          在同一個 CLI 內開始新對話
/resume       繼續先前 session
/plan         先進入計畫模式，確認做法後再修改
/review       讓 Codex 檢視工作樹
/init         產生 AGENTS.md 範本，讓 Codex 讀懂專案規則
/quit, /exit  離開 CLI
```
3. 知道即可
```
/fast                  切換快速模式
/fork                  從先前 session 分支，適合嘗試不同解法
/mcp                   列出可用 MCP 工具；通常由團隊先設定
/personality           調整回覆風格
/copy                  複製最後回覆
/apps                  瀏覽並插入 apps 連結器
/plugins               管理或瀏覽 plugins
/agent                 使用或管理 agent 相關功能
/side                  開啟 side chat
/sandbox-add-read-dir  增加 sandbox 可讀資料夾
/statusline            編輯狀態列
/title                 編輯終端標題
/keymap                調整快捷鍵設定
/feedback              回報意見
```
`/approvals` 仍可作為 alias，但新手優先使用 `/permissions`。

`AGENTS.md` 是專案給 Codex 的說明文件，通常放在專案根目錄。可以寫入專案結構、常用指令、測試方式、命名規則與團隊偏好的工作流程，讓 Codex 每次進入專案時先遵守同一套規則。

**常用子命令速覽**
```powershell
codex exec      # 非互動執行，適合腳本/CI
codex review    # 非互動 code review
codex apply     # 套用指定 Codex task 的 diff，需提供 TASK_ID
codex resume    # 恢復先前互動 session
codex fork      # 從先前 session 分支
codex update    # 更新 Codex CLI
codex doctor    # 診斷本機安裝、設定與登入狀態
codex plugin    # 管理 Codex plugins
codex features  # 查看 feature flags
codex completion # 產生 shell completion 腳本
codex app       # 啟動 Codex desktop app
codex sandbox   # 在 Codex sandbox 內執行命令
codex mcp       # 管理 MCP server
```
`cloud`、`app-server`、`exec-server`、`remote-control`、`mcp-server` 屬於進階或實驗用途，新手先不用放進主流程。

**常見問題排除**
1. 無法登入或憑證異常
```powershell
# 查看登入狀態
codex login status

# 重新登入
codex login

# 診斷本機安裝、設定、登入與執行環境
codex doctor
```
2. 需要調整核准流程
```powershell
# 只對特定任務調整核准策略
codex --ask-for-approval on-request "你的提示"
```
3. 需要可寫入更多資料夾
```powershell
# 增加可寫目錄
codex exec --add-dir C:\temp\output "產生報表"
```
4. 不在 Git 專案也要執行
```powershell
# 允許在非 Git 資料夾執行
codex exec --skip-git-repo-check "分析這些檔案"
```
5. 不確定 sandbox 影響
```powershell
# 顯示或測試 sandbox 行為（Windows）
codex sandbox windows -- dir
```

**提示詞小抄（新手常用模板）**
1. 先讀後改
```powershell
請先總結現況，再提出修改建議，最後再實作
```
2. 只要列出風險
```powershell
請只列出可能的風險與回歸影響，不要先修改
```
3. 產生計畫與步驟
```powershell
請先給我實作計畫與步驟，等我確認後再開始修改
```
4. 簡化輸出
```powershell
請用條列重點，保持簡短
```

**非互動 Exec 模式（適合腳本/CI）**
1. 基本用法
```powershell
# 非互動執行
codex exec "替所有 API 增加錯誤處理"
```
2. 允許修改工作區
```powershell
# 明確指定 sandbox；新腳本不要再用 --full-auto
codex exec --sandbox workspace-write "修正所有 lint 錯誤"
```
3. JSON 輸出
```powershell
# 以 JSON Lines 輸出
codex exec --json "列出所有 TODO 註解"
```
4. 從 stdin 讀取提示
```powershell
# 從管線輸入提示
"修正所有 lint 錯誤" | codex exec -
```
5. 使用輸出 schema
```powershell
# 使用 JSON schema 讓輸出結構化
codex exec --output-schema .\schema.json "列出所有函式簽名"
```
6. 將最後回覆寫入檔案
```powershell
# -o 是 --output-last-message 的短寫
codex exec -o .\api-docs.txt "產生 API 文件"
```

**Code Review**
1. 檢查未提交變更
```powershell
# 針對未提交變更做 review
codex review --uncommitted
```
2. 與指定分支比較
```powershell
# 針對 base 分支做 review
codex review --base main
```
3. 指定 commit
```powershell
# 針對特定 commit 做 review
codex review --commit abc123
```

**Session 管理**
1. 繼續上次工作
```powershell
# 恢復上一個 session
codex resume --last
```
2. 查看全部 session
```powershell
# 列出所有 session
codex resume --all
```
3. 分支一個新 session
```powershell
# 從上一個 session 分支
codex fork --last
```

**設定與覆蓋（config + CLI 覆蓋）**
1. 主要設定檔
```toml
# ~/.codex/config.toml（重點示例）
model = "gpt-5.4"
approval_policy = "on-request"
sandbox_mode = "workspace-write"
```
`on-failure` 已 deprecated；互動使用建議改用 `on-request`，非互動可依需求使用 `never`。

2. CLI 覆蓋設定
```powershell
# 覆蓋模型；可依公司帳號可用模型調整
codex -c model=gpt-5.4 "你的提示"

# 同時覆蓋多個設定
codex -c model=gpt-5.4 -c approval_policy=never "你的提示"
```

**安全與 Sandbox 重點**
1. 允許工作區寫入
```powershell
# 允許修改工作區內檔案
codex exec --sandbox workspace-write "修正所有檔案格式"
```
2. 完全跳過核准與 sandbox（非常危險）
```powershell
# 會跳過所有核准與 sandbox；只在隔離環境使用
codex exec --dangerously-bypass-approvals-and-sandbox "執行遷移腳本"
```
3. Windows sandbox 測試
```powershell
# 在 Windows sandbox 內執行命令
codex sandbox windows -- dir
```
`--full-auto` 在 `codex exec` 仍可相容解析，但已 deprecated；新用法請改成明確的 `--sandbox workspace-write`。

**常見情境速查**
1. 解釋整個專案
```powershell
# 請 Codex 解釋專案結構
codex "請解釋這個專案的結構與重點"
```
2. 尋找 TODO
```powershell
# 用 JSON 格式列出 TODO
codex exec --json "列出所有 TODO 註解"
```
3. 修正單一問題
```powershell
# 針對特定問題請求修正
codex "修正登入流程的例外處理"
```
4. 產生文件
```powershell
# 產生 API 文件，並把最後回覆寫入檔案
codex exec -o .\api-docs.txt "產生 API 文件"
```
5. 快速 review
```powershell
# 檢查未提交變更
codex review --uncommitted
```
6. 指定模型處理複雜任務
```powershell
# 指定模型執行較複雜工作；可依公司帳號可用模型調整
codex -m gpt-5.4 "重構這個模組並補上測試建議"
```

**小提醒**
1. 初學者建議先使用 `codex` 互動模式熟悉流程。
2. 需要讓 Codex 修改檔案時，優先明確指定 `--sandbox workspace-write`。
3. `--dangerously-bypass-approvals-and-sandbox` 風險很高，只在隔離環境使用。
4. 需要在其他資料夾工作時，記得用 `-C` 指定目錄。
