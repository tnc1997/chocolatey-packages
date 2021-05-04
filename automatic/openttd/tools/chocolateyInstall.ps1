$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://proxy.binaries.openttd.org/openttd-releases/1.11.2/openttd-1.11.2-windows-win32.exe"
$url64       = "https://proxy.binaries.openttd.org/openttd-releases/1.11.2/openttd-1.11.2-windows-win64.exe"
$checksum32  = "a3da53e8a6cba03db277459c6b40a84a7bd0c99c837048601498d79193083b83"
$checksum64  = "2b2075257c56a940ecdf00e9b02ffa6293e845a20f7a4dd0571082aaee1edd28"

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
