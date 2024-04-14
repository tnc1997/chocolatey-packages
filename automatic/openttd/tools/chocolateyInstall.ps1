$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://cdn.openttd.org/openttd-releases/14.0/openttd-14.0-windows-win32.exe"
$url64       = "https://cdn.openttd.org/openttd-releases/14.0/openttd-14.0-windows-win64.exe"
$checksum32  = "8e26cffef7f762cf6882d9bf78c6c41ec05f82669f8b8a7342c0227c5642d6be"
$checksum64  = "8594cae19e12061efbf4ec41b70cc2023e78ac8f613b5c805e53ac53b5740861"

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
