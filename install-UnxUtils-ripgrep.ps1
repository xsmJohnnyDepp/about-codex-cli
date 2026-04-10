<#  
.SYNOPSIS  
  安裝 Chocolatey（如尚未安裝），然後使用它安裝 UnxUtils 與 ripgrep。  
.DESCRIPTION  
  適用於 Windows 10/11 的 PowerShell 腳本。  
  需以「系統管理員」身分執行。  
#>

# 確保為系統管理員身分
If (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)) {
    Write-Error "請以「以系統管理員執行」開啟 PowerShell 再執行此腳本。"
    Exit 1
}

Write-Host "開始：檢查 Chocolatey 是否安裝…" -ForegroundColor Cyan

# 檢查 choco 指令是否可用
$chocoExists = Get-Command choco.exe -ErrorAction SilentlyContinue
If (-not $chocoExists) {
    Write-Host "Chocolatey 未安裝。開始安裝 Chocolatey…" -ForegroundColor Yellow

    # 設定執行策略、TLS 1.2，然後執行官方安裝腳本
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072

    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

    # 檢查安裝結果
    If (Get-Command choco.exe -ErrorAction SilentlyContinue) {
        Write-Host "Chocolatey 安裝成功。" -ForegroundColor Green
    } else {
        Write-Error "Chocolatey 安裝失敗，請檢查錯誤訊息並手動安裝。"
        Exit 1
    }
} else {
    Write-Host "Chocolatey 已經安裝。" -ForegroundColor Green
}

# 使用 choco 更新自身（可選）
Write-Host "更新 Chocolatey 本身…" -ForegroundColor Cyan
choco upgrade chocolatey -y

# 定義要安裝的套件清單
$packages = @(
    'ripgrep',
    # UnxUtils 在 Chocolatey 社群庫可能不存在/不完整，故也可以透過手動方式安裝。此處先試用 choco 安裝，如果失敗再手動處理。
    'unxutils'
)

Write-Host "安裝套件：" + ($packages -join ', ') -ForegroundColor Cyan
ForEach ($pkg in $packages) {
    Write-Host "安裝 $pkg…" -NoNewline
    choco install $pkg -y
    If ($LASTEXITCODE -eq 0) {
        Write-Host " ✓ 成功" -ForegroundColor Green
    } else {
        Write-Host " ✗ 失敗 (ExitCode=$LASTEXITCODE)" -ForegroundColor Red
        # 若安裝 unxutils 失敗，可在此加入手動下載 + 解壓 + PATH 設定程序
    }
}

# 若 unxutils 安裝失敗，可手動安裝如下：
<# 
Write-Host "開始手動安裝 UnxUtils…" -ForegroundColor Yellow
$targetDir = "C:\tools\UnxUtils"
New-Item -ItemType Directory -Path $targetDir -Force
$zipUrl = "https://sourceforge.net/projects/unxutils/files/unxutils/current/UnxUtils.zip/download"
$zipFile = Join-Path $targetDir "UnxUtils.zip"
Invoke-WebRequest -Uri $zipUrl -OutFile $zipFile
Expand-Archive -LiteralPath $zipFile -DestinationPath $targetDir
$binPath = Join-Path $targetDir "usr\local\wbin"
Write-Host "加入 PATH：$binPath"
$oldPath = [Environment]::GetEnvironmentVariable("Path","Machine")
[Environment]::SetEnvironmentVariable("Path", "$oldPath;$binPath", "Machine")
# 重新開 PowerShell 或登出再登入，讓 PATH 生效
# 測試
& (Join-Path $binPath "grep.exe") --version
#>
Write-Host "腳本執行完畢。請關閉並重新開啟 PowerShell，然後執行 `rg --version` 與 `grep --version`（或 `grep`）進行測試。" -ForegroundColor Cyan
