$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://proxy.binaries.openttd.org/openttd-releases/13.1/openttd-13.1-windows-win32.exe"
$url64       = "https://proxy.binaries.openttd.org/openttd-releases/13.1/openttd-13.1-windows-win64.exe"
$checksum32  = "702cd834a09123e774f23828ee917fe1cdb9f98321feae3d69315af4d1fef8f2"
$checksum64  = "36c643665fb7351910830fab4147e68402711b5ae59baea95dde9baa00fb2e12"

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
