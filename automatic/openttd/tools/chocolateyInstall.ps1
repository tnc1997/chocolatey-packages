$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://cdn.openttd.org/openttd-releases/13.3/openttd-13.3-windows-win32.exe"
$url64       = "https://cdn.openttd.org/openttd-releases/13.3/openttd-13.3-windows-win64.exe"
$checksum32  = "6c0722a23d0ee320b0bafff351f5b2132df38fc386fc9bb900507007fa2965bb"
$checksum64  = "4ef745f5cb34b86a7e5d525c60b22c544c9f9da11e86698c0d12e252468084a0"

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
