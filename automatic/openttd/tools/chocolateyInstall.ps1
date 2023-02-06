$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://proxy.binaries.openttd.org/openttd-releases/13.0/openttd-13.0-windows-win32.exe"
$url64       = "https://proxy.binaries.openttd.org/openttd-releases/13.0/openttd-13.0-windows-win64.exe"
$checksum32  = "5dac42375a6ec94d7531b9ba72a04fdadf26e876bc0be5e4ea7f77b93d070dcf"
$checksum64  = "64e4d17be7e709c564f53c3590c0b94a1e14a159182bdf9ec696c98e2637c308"

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
