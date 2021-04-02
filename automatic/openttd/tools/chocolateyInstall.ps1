$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://proxy.binaries.openttd.org/openttd-releases/1.11.0/openttd-1.11.0-windows-win32.exe"
$url64       = "https://proxy.binaries.openttd.org/openttd-releases/1.11.0/openttd-1.11.0-windows-win64.exe"
$checksum32  = "95d98dcfb439fbec116758538c069b3ad0fd196b509d8c5a3cf24d0e3bd108fd"
$checksum64  = "8fadd40d36230ac26c0d80820147daf1243423a817d298901db487811408ba58"

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
