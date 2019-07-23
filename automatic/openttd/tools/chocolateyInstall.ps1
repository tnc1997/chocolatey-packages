$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://proxy.binaries.openttd.org/openttd-releases/1.9.2/openttd-1.9.2-windows-win32.exe"
$url64       = "https://proxy.binaries.openttd.org/openttd-releases/1.9.2/openttd-1.9.2-windows-win64.exe"
$checksum32  = "b928bf01d0c8aca65aa3823176a8072ea23cf7aecf5b83df018c15b99595a045"
$checksum64  = "7897464889fe861cebc801bb7cbba25868ae61703d532e9a98890c1ab39c4bf5"

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
