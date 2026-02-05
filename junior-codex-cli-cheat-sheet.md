# Codex CLI 新手 Cheat Sheet（PowerShell 版）

**適用環境**
Windows + PowerShell

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

**安裝與登入**
1. 安裝
```powershell
# 使用 npm 全域安裝
npm install -g @openai/codex
```
2. 登入與狀態
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
# 指定模型啟動
codex -m gpt-4o "幫我重構這段程式碼"
```
2. 附加圖片
```powershell
# 帶入截圖或圖片檔
codex -i .\screenshot.png "修正 UI 問題"
```
3. 自動核准（小心使用）
```powershell
# 自動核准工作區內修改
codex --full-auto "整理這個模組的結構"
```
4. 指定工作目錄
```powershell
# 以指定目錄作為工作區
codex -C .\my-project "分析這個專案"
```
5. 引用檔案（@）
```powershell
# 在互動提示中用 @ 引用檔案
請讀取 @src\app.ts 並解釋主要流程
```

**互動模式內建命令（/）**
1. 叫出清單
```powershell
# 在 composer 內輸入 / 叫出指令清單並可搜尋
/
```
2. 常用指令速查
```
/model        切換模型
/status       查看目前 session 狀態（模型/核准策略/可寫目錄/ token）
/permissions  變更核准/權限模式（例如 Auto / Read Only）
/diff         顯示 Git 變更（含未追蹤檔案）
/compact      壓縮長對話摘要以節省 context
/review       讓 Codex 檢視工作樹
/init         產生 AGENTS.md 範本
/mention      附加檔案到對話
/mcp          列出可用 MCP 工具
/apps         瀏覽並插入 apps 連結器
/logout       登出
/quit, /exit  離開 CLI
```

**常見問題排除**
1. 無法登入或憑證異常
```powershell
# 查看登入狀態
codex login status

# 重新登入
codex login
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
2. JSON 輸出
```powershell
# 以 JSON Lines 輸出
codex exec --json "列出所有 TODO 註解"
```
3. 從 stdin 讀取提示
```powershell
# 從管線輸入提示
"修正所有 lint 錯誤" | codex exec -
```
4. 使用輸出 schema
```powershell
# 使用 JSON schema 讓輸出結構化
codex exec --output-schema .\schema.json "列出所有函式簽名"
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
model = "gpt-4o"
approval_policy = "on-failure"
sandbox_mode = "workspace-write"
```
2. CLI 覆蓋設定
```powershell
# 覆蓋模型
codex -c model=gpt-4o "你的提示"

# 同時覆蓋多個設定
codex -c model=gpt-4o -c approval_policy=never "你的提示"
```

**安全與 Sandbox 重點**
1. 自動核准模式
```powershell
# 會自動核准所有動作（注意風險）
codex --full-auto "修正所有檔案格式"
```
2. 完全跳過核准（非常危險）
```powershell
# 會跳過所有核准與 sandbox（請非常小心）
codex exec --yolo "執行遷移腳本"
```
3. Windows sandbox 測試
```powershell
# 在 Windows sandbox 內執行指令
codex sandbox windows -- dir
```

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
# 產生 API 文件
codex exec --last-message-file .\api-docs.txt "產生 API 文件"
```
5. 快速 review
```powershell
# 檢查未提交變更
codex review --uncommitted
```
6. 指定模型處理複雜任務
```powershell
# 指定模型執行較複雜工作
codex -m gpt-4o "重構這個模組並補上測試建議"
```

**小提醒**
1. 初學者建議先使用 `codex` 互動模式熟悉流程。
2. `--full-auto` 與 `--yolo` 風險高，請確認環境與需求後再用。
3. 需要在其他資料夾工作時，記得用 `-C` 指定目錄。
