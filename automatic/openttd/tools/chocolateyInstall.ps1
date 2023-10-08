$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://cdn.openttd.org/openttd-releases/13.4/openttd-13.4-windows-win32.exe"
$url64       = "https://cdn.openttd.org/openttd-releases/13.4/openttd-13.4-windows-win64.exe"
$checksum32  = "99d9262a92c7c42fe5385b6d96f3887d077d040cb10a7b58868a77ec4058a0a6"
$checksum64  = "dd793906db2aec7a4c78f39a65108b0f1730739e56a054f97de113d925ded20f"

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
