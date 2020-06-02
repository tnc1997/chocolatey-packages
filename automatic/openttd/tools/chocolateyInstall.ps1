$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://proxy.binaries.openttd.org/openttd-releases/1.10.2/openttd-1.10.2-windows-win32.exe"
$url64       = "https://proxy.binaries.openttd.org/openttd-releases/1.10.2/openttd-1.10.2-windows-win64.exe"
$checksum32  = "0e8ddfc4686d1b0550e3b6ce2374be319b6345b676ac32d1e70ba46d2956ee5d"
$checksum64  = "9b4068af55eb38708e4870ead13f20cfd0421f2aefe2da921fe55c16679757cc"

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
