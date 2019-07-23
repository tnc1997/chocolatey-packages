import-module au

$uri = "https://api.github.com/repos/openttd/openttd/releases/latest"

function global:au_SearchReplace {
    @{
        "tools\chocolateyInstall.ps1" = @{
            "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
     }
}

function global:au_GetLatest {
    $release = Invoke-WebRequest -Uri $uri -UseBasicParsing | ConvertFrom-Json

    $version = $release.tag_name
    $url32 = "https://proxy.binaries.openttd.org/openttd-releases/" + $version + "/openttd-" + $version + "-windows-win32.exe"
    $url64 = "https://proxy.binaries.openttd.org/openttd-releases/" + $version + "/openttd-" + $version + "-windows-win64.exe"

    $Latest = @{
        URL32 = $url32
        URL64 = $url64
        Version = $version
    }

    return $Latest
}

update
