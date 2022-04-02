$ErrorActionPreference = "Stop"

$packageName = "openttd"
$fileType    = "exe"
$url32       = "https://proxy.binaries.openttd.org/openttd-releases/12.2/openttd-12.2-windows-win32.exe"
$url64       = "https://proxy.binaries.openttd.org/openttd-releases/12.2/openttd-12.2-windows-win64.exe"
$checksum32  = "d2a20fb7ed654c5ee36be69b49c9987ae49b76e9e86ed1658ea05f139ed35d04"
$checksum64  = "74682a91ca9953ded0888d15d5d7bf0a887efb41592ddcb3ef4e14f242099a0d"

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
