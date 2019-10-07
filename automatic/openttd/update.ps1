import-module au

$Uri = "https://api.github.com/repos/openttd/openttd/releases/latest"

function global:au_SearchReplace {
    @{
        "tools\chocolateyInstall.ps1" = @{
            "(^[$]url32\s*=\s*)(`".*`")"      = "`$1`"$($Latest.URL32)`""
            "(^[$]url64\s*=\s*)(`".*`")"      = "`$1`"$($Latest.URL64)`""
            "(^[$]checksum32\s*=\s*)(`".*`")" = "`$1`"$($Latest.Checksum32)`""
            "(^[$]checksum64\s*=\s*)(`".*`")" = "`$1`"$($Latest.Checksum64)`""
        }
     }
}

function global:au_GetLatest {
    $Release = Invoke-WebRequest -Uri $Uri -UseBasicParsing | ConvertFrom-Json

    $Version = $Release.tag_name
    $Url32 = "https://proxy.binaries.openttd.org/openttd-releases/" + $Version + "/openttd-" + $Version + "-windows-win32.exe"
    $Url64 = "https://proxy.binaries.openttd.org/openttd-releases/" + $Version + "/openttd-" + $Version + "-windows-win64.exe"

    $Latest = @{
        URL32 = $Url32
        URL64 = $Url64
        Version = $Version
    }

    return $Latest
}

update
