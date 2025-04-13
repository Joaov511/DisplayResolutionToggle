Import-Module $PSScriptRoot\Modules\DisplaySettings

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$exePath = Join-Path $scriptDir "ChangeScreenResolution.exe"

$defaultWidth = 1920
$defaultHeight = 1080

$customResolutionWidth = 2560
$customResolutionHeight = 1440

$displayInfo = Get-DisplayResolution
$displayWidth = $displayInfo.dmPelsWidth

if($displayWidth -eq $defaultWidth) {
    $process = Start-Process $exePath -ArgumentList "/w=$customResolutionWidth", "/h=$customResolutionHeight", "/d=0" -WindowStyle Hidden -PassThru -Wait
} else {
    $process = Start-Process $exePath -ArgumentList "/w=$defaultWidth", "/h=$defaultHeight", "/d=0" -WindowStyle Hidden -PassThru -Wait
}

if($process.ExitCode -ne 0) {
    throw "Error: ChangeScreenResolution.exe failed, resolution specified not supported"
}










