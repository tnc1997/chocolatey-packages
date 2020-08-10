$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://proxy.binaries.openttd.org/openttd-releases/1.10.3/openttd-1.10.3-windows-win32.exe"
$url64       = "https://proxy.binaries.openttd.org/openttd-releases/1.10.3/openttd-1.10.3-windows-win64.exe"
$checksum32  = "94e54604e3bf59e3ceec84ba0a25e5fed4ed6fa620265ddd3dd2a1568aabdd9a"
$checksum64  = "e3e83c3f18243dca09c33635237f024224af894f3ec0db412855783bb55eeb4b"

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
