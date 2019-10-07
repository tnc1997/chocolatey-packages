$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://proxy.binaries.openttd.org/openttd-releases/1.9.3/openttd-1.9.3-windows-win32.exe"
$url64       = "https://proxy.binaries.openttd.org/openttd-releases/1.9.3/openttd-1.9.3-windows-win64.exe"
$checksum32  = "ee8439e2e00b66059cfea84a82da578765991b1b57fbd79f133bc43478caf249"
$checksum64  = "57099056f49fbb712e59079a55be10aa54f69b3a5018b84d73c014d9a3d857cb"

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
