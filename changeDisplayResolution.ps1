$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$exePath = Join-Path $scriptDir "ChangeScreenResolution.exe"

$defaultWidth = 1920
$defaultHeight = 1080

$desiredWidth = 2560
$desiredHeight = 1440

$displayInfo = Get-DisplayResolution
$displayWidth = $displayInfo.dmPelsWidth

if($displayWidth -eq $defaultWidth) {
    Start-Process $exePath -ArgumentList "/w=$desiredWidth", "/h=$desiredHeight", "/d=0" -WindowStyle Hidden
} else {
    Start-Process $exePath -ArgumentList "/w=$defaultWidth", "/h=$defaultHeight", "/d=0" -WindowStyle Hidden
}
