$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://cdn.openttd.org/openttd-releases/14.1/openttd-14.1-windows-win32.exe"
$url64       = "https://cdn.openttd.org/openttd-releases/14.1/openttd-14.1-windows-win64.exe"
$checksum32  = "ae74db42797b73713124ae633c241f701c6cacec582b9f41ae0fa8a4b4537140"
$checksum64  = "06c44cb90653e48507e3e5050e698cae1efd52a593e754ac288f165cdf5a5579"

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
