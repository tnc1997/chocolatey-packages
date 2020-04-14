$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://proxy.binaries.openttd.org/openttd-releases/1.10.1/openttd-1.10.1-windows-win32.exe"
$url64       = "https://proxy.binaries.openttd.org/openttd-releases/1.10.1/openttd-1.10.1-windows-win64.exe"
$checksum32  = "1f4826626de29e915388fd395ecd3d838a3cd175da01cc416c5b839b26bdd1e2"
$checksum64  = "691519e7aae5e2c545981aed593206d87407ebded532e4c240c9df0a0c0c0c5b"

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
