# about-codex-cli

這個 repo 用來準備 Codex CLI 內部技術分享。

## 課前 Windows 環境準備

請同事先在自己的 Windows 10/11 環境完成以下安裝，避免現場 demo 時卡在基本工具。

建議先安裝：

- Windows Terminal  
  https://apps.microsoft.com/detail/9N0DX20HK701?hl=zh-tw&gl=TW&ocid=pdpshare
- PowerShell  
  https://apps.microsoft.com/detail/9MZ1SNWT0N5D?hl=neutral&gl=TW&ocid=pdpshare
- Microsoft Teams  
  https://apps.microsoft.com/detail/XP8BT8DW290MPQ?hl=zh-Hant-TW&gl=TW&ocid=pdpshare
- Node.js LTS 22+  
  https://nodejs.org/en/download

接著請用「系統管理員身分」開啟 PowerShell，在 repo 根目錄執行：

```powershell
.\install-UnxUtils-ripgrep.ps1
```

這個腳本會協助安裝 Chocolatey、UnxUtils 與 ripgrep。安裝完成後，請重新開啟 PowerShell，並確認工具可用：

```powershell
rg --version
grep --version
```

最後請確認 `npm` 可用，並安裝 Codex CLI：

```powershell
npm install -g @openai/codex
codex --version
```

## 參考連結

- Codex GitHub: https://github.com/openai/codex
- Codex 官方文件: https://developers.openai.com/codex
