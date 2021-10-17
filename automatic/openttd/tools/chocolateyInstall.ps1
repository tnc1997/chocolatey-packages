$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://proxy.binaries.openttd.org/openttd-releases/12.0/openttd-12.0-windows-win32.exe"
$url64       = "https://proxy.binaries.openttd.org/openttd-releases/12.0/openttd-12.0-windows-win64.exe"
$checksum32  = "58b32746df83211ee78880286886fe2e87581679575a34a74bf83966e31a4a3e"
$checksum64  = "6c03d4014fb8124d80f81ca69af706d3c727a3358f48d1ae6ee7afc2b2d05350"

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
