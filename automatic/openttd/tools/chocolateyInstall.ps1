$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://proxy.binaries.openttd.org/openttd-releases/1.11.1/openttd-1.11.1-windows-win32.exe"
$url64       = "https://proxy.binaries.openttd.org/openttd-releases/1.11.1/openttd-1.11.1-windows-win64.exe"
$checksum32  = "b335cd490f9abaad0a1f3be7ef09a9db2c1f9e53cdd0f7067343c81c7c55549a"
$checksum64  = "61dffcc4e9bac2aba7e57d15949d434fdd6fe0caac95ae3e778d2c57354a723f"

$packageArgs = @{
  packageName    = $packageName
  fileType       = $fileType
  url            = $url32
  url64Bit       = $url64
  checksum       = $checksum32
  checksum64     = $checksum64
  checksumType   = "sha256"
  checksumType64 = "sha256"
  silentArgs     = "/S"
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
