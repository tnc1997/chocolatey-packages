$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://proxy.binaries.openttd.org/openttd-releases/1.10.0/openttd-1.10.0-windows-win32.exe"
$url64       = "https://proxy.binaries.openttd.org/openttd-releases/1.10.0/openttd-1.10.0-windows-win64.exe"
$checksum32  = "7ac18b8c6dd2d40b36c5c9a112fad349f9259db5a10e1ef33e4f44756cbf8d42"
$checksum64  = "51731f88d5a28de7694c08a897af469b0027463e3b261c6f051d34128773840c"

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
