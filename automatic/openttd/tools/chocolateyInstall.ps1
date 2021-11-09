$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://proxy.binaries.openttd.org/openttd-releases/12.1/openttd-12.1-windows-win32.exe"
$url64       = "https://proxy.binaries.openttd.org/openttd-releases/12.1/openttd-12.1-windows-win64.exe"
$checksum32  = "ca9918622a7f9ce34b5bb730e0b5dcc71d9d988e8d4f42bc45ec5210f0b1f920"
$checksum64  = "b799dadf8e01469ef5a4fdb57927eacde77fdfcbc95787efc522b8c5b434071a"

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
