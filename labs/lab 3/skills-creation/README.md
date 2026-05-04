# Lab 3：建立自己的 Codex Skill

本 Lab 用來示範如何使用 Codex CLI 內建的 `$skill-creator` 建立一個自訂 skill。範例目標是建立 `commit-gen` skill，讓 Codex 可以根據 staged changes 產生符合 Conventional Commits 格式的 commit message。

來源參考：外部參考，改寫自 upstream repo `https://github.com/kousen/codex-training/tree/main/exercises/skills-creation`

## 任務目標

使用 Codex 建立一個自訂 skill，讓它可以：

- 讀取 Git staged changes。
- 分析變更範圍與檔案類型。
- 產生符合團隊規範的 Conventional Commit message。
- 提供可重複使用、可放進 repo 分享的 skill 結構。

## 背景知識

Agent Skills 是一種可重複使用的指令包。它可以包含：

- `SKILL.md`：必要檔案，包含 metadata 與操作指引。
- `scripts/`：可選，用來放可執行腳本。
- `references/`：可選，用來放範例、規格、參考資料。
- `assets/`：可選，用來放模板或靜態資源。

Codex 啟動時通常只會先讀取 skill 的 `name`、`description` 與路徑；當任務符合 description，或使用者明確輸入 `$skill-name` 時，才會讀取完整 `SKILL.md`。這就是 progressive disclosure，目的是減少 context window 的浪費。

## 示範情境

這個 Lab 適合在進階分享中操作，讓同事看到：

1. skill 不是魔法外掛，而是一份可版本控管的 SOP。
2. description 會影響 Codex 是否能正確觸發 skill。
3. skill 可以從個人環境移到 repo 的 `.agents/skills/`，變成團隊共用工作流程。

## 執行前確認

- 已安裝並登入 Codex CLI。
- 目前在一個 Git repository 內。
- 工作區可以建立檔案與資料夾。
- 建議使用 PowerShell 執行示範。
- 如果要測試 commit message 產生效果，請先準備一些 staged changes。

## 建議輸出位置

個人測試可先建立在：

```text
~/.agents/skills/commit-gen/
```

若要做成這個 repo 的團隊範例，可放在：

```text
.agents/skills/commit-gen/
```

課堂示範時，建議先建立在個人目錄，確認內容正確後再複製到 repo。

## 預期 Skill 結構

完成後的 skill 可以長這樣：

```text
~/.agents/skills/commit-gen/
├── SKILL.md
├── agents/
│   └── openai.yaml
├── scripts/
├── references/
│   └── conventions.md
└── assets/
    └── template.txt
```

最小可行版本只需要 `SKILL.md`。`references/`、`scripts/`、`assets/` 可以依需要再補。

## Step 1：用 skill-creator 建立骨架

在 Codex 互動模式中輸入：

```text
$skill-creator Create a skill called commit-gen that helps generate conventional commit messages by analyzing staged changes
```

建立後，請檢查 Codex 產生的檔案位置與內容，尤其是 `SKILL.md`。

## Step 2：調整 SKILL.md metadata

請確認 `SKILL.md` 的 YAML frontmatter 至少包含 `name` 與 `description`。

範例：

```yaml
---
name: commit-gen
description: >
  Generate conventional commit messages. Use when asked to write a
  commit message, create a commit, or analyze staged git changes.
  Triggers: "commit message", "write commit", "generate commit".
---
```

注意：

- `name` 建議使用小寫英文與 hyphen。
- `description` 要清楚描述何時使用這個 skill。
- 若 description 太模糊，Codex 可能不會自動選到這個 skill。

## Step 3：撰寫 Skill 工作流程

在 `SKILL.md` 中加入明確流程：

````markdown
# Commit Message Generator

Generate conventional commit messages following project standards.

## Workflow

1. Run `git diff --staged` to inspect staged changes.
2. Identify the primary type of change.
3. Infer a scope from the changed paths or affected module.
4. Generate one concise commit message.
5. If the staged changes are unrelated, suggest splitting them into multiple commits.

## Commit Types

- `feat`: New user-facing feature.
- `fix`: Bug fix.
- `docs`: Documentation-only changes.
- `style`: Formatting changes without behavior change.
- `refactor`: Code restructuring without behavior change.
- `test`: Test additions or updates.
- `chore`: Build, dependency, tooling, or maintenance work.

## Output Format

```text
<type>(<scope>): <description>

<optional body>

<optional footer>
```
````

## Step 4：加入參考資料

建立：

```text
~/.agents/skills/commit-gen/references/conventions.md
```

內容範例：

````markdown
# Conventional Commits Quick Reference

## Examples

### Feature

```text
feat(auth): add OAuth2 login support
```

### Bug Fix

```text
fix(api): handle null response from payment gateway
```

### Refactor

```text
refactor(database): migrate to connection pooling
```

## Scope Guidelines

Use lowercase scopes. Prefer:

- Directory names, such as `api`, `web`, `cli`.
- Feature areas, such as `auth`, `payment`, `search`.
- Component names, such as `button`, `modal`, `form`.
````

## Step 5：測試 Skill

先準備 staged changes：

```powershell
git status
git add .
git diff --staged
```

明確呼叫 skill：

```text
$commit-gen
```

或測試 implicit invocation：

```text
請幫我根據 staged changes 產生一個 commit message。
```

建議觀察：

- Codex 是否有先看 `git diff --staged`。
- commit type 是否合理。
- scope 是否來自變更檔案或模組。
- description 是否簡短清楚。
- 如果 staged changes 太分散，是否會建議拆 commit。

## 驗收標準

- [ ] 已建立 `commit-gen` skill。
- [ ] `SKILL.md` 有合法 YAML frontmatter。
- [ ] `description` 能對應 commit message 相關需求。
- [ ] skill 會先分析 staged changes，而不是直接猜。
- [ ] 輸出符合 Conventional Commits 格式。
- [ ] commit message 清楚、簡短、能描述實際變更。
- [ ] 若變更內容過於分散，skill 會建議拆分 commit。

## 進階挑戰

可視時間選做：

1. 從 branch name 自動偵測 issue 或 ticket 編號。
2. 支援繁中與英文 commit message。
3. 偵測 breaking changes，並產生 `BREAKING CHANGE:` footer。
4. 同時產生 changelog 草稿。
5. 依不同 repo 提供不同 commit type 或 scope 清單。

## 團隊分享方式

若要把 skill 放進專案讓團隊共用，可建立：

```text
.agents/skills/commit-gen/
```

PowerShell 範例：

```powershell
New-Item -ItemType Directory -Force .\.agents\skills
Copy-Item -Recurse -Force $HOME\.agents\skills\commit-gen .\.agents\skills\commit-gen
git add .\.agents\skills\commit-gen
git commit -m "chore: add commit-gen skill"
```

提醒：

- 放進 repo 前，請先檢查 skill 內容是否包含個人路徑、token、公司機密或不該公開的範例。
- 如果 skill 內有 `scripts/`，要 review 腳本內容，避免加入高風險操作。
- 團隊共用 skill 應該保持小而明確，不要把所有規則塞進同一個 skill。

## Skills vs Custom Prompts

| 比較項目 | Skill | Custom Prompt |
| --- | --- | --- |
| 結構 | 資料夾，包含 `SKILL.md` 與可選資源 | 單一文字片段 |
| 呼叫方式 | `$skill-name` 或由 Codex 自動選用 | 手動複製貼上 |
| 分享方式 | 適合放 Git，團隊可共用 | 容易散落在個人筆記 |
| 可附加資源 | 可包含 scripts、templates、references | 通常只有文字 |
| 適合情境 | 多步驟、需重複執行的工作流程 | 簡單一次性提示 |

## 示範時可直接貼上的提示

```text
請依照 @labs/lab 3/skills-creation/README.md 執行 Lab 3。

請使用 `$skill-creator` 建立一個名為 `commit-gen` 的 skill，目標是根據 Git staged changes 產生 Conventional Commit message。

請先建立最小可行版本，至少包含 `SKILL.md`，並在內容中明確要求：

1. 先使用 `git diff --staged` 分析 staged changes。
2. 判斷 commit type，例如 feat、fix、docs、style、refactor、test、chore。
3. 從變更路徑推測 scope。
4. 使用 zh-tw 產生簡短清楚的 commit message。
5. 如果 staged changes 太分散，建議拆成多個 commit。

完成後請回報建立或更新的檔案，以及如何測試這個 skill。
```
