param(
    # overwrite upstream param
    [String]$upstream = "sincerely-hello-world/easyScoop:main"
    # [String]$upstream = "<username>/<bucketname>:main"

    # run in local windows's pwsh
    # path/to/auto-pr.ps1  -upstream "sincerely-hello-world/easyScoop:main"
)

if (!$env:SCOOP_HOME) { $env:SCOOP_HOME = Convert-Path (scoop prefix scoop) }
$autopr = "$env:SCOOP_HOME/bin/auto-pr.ps1"
$dir = "$PSScriptRoot/../bucket" # checks the parent dir
& $autopr -Dir $dir -Upstream $Upstream @Args
