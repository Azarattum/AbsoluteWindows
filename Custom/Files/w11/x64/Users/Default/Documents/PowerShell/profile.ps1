# Settings
$RemoteServer = ""

# Window Title
$Title = "PowerShell"
if ([Security.Principal.WindowsIdentity]::GetCurrent().Groups -contains 'S-1-5-32-544') {
    $Title = "Administrator: " + $Title
}
$Host.UI.RawUI.WindowTitle = $Title

# Shell Prompt
function prompt {
    $path = $pwd -replace [regex]::escape($HOME), "~"
    $path = $path -replace "\\", "/"
    Write-Host "[" -ForegroundColor White -NoNewline
    Write-Host "$([char]0xf17a) " -NoNewline
    Write-Host "$path" -ForegroundColor DarkCyan -NoNewline
    Write-Host "]" -ForegroundColor White -NoNewline
    Write-Host "$ `e[5 q" -NoNewline

    # Git Support
    if ($status = Get-GitStatus -Force) {
        $global:GitPromptSettings.ShowStatusWhenZero = 0
        Write-Host "`r[" -ForegroundColor White -NoNewline
        Write-Host "$([char]0xf17a) " -NoNewline
        Write-Host "$path" -ForegroundColor DarkCyan -NoNewline
        

        Write-Host "|" -NoNewline 
        Write-Host "$($status.Branch)" -ForegroundColor (Get-GitBranchStatusColor $status).ForegroundColor -NoNewline 
        if ($status.BehindBy -ne 0 || $status.AheadBy -ne 0) {
            Write-Host "$(Write-GitBranchStatus $status)" -NoNewline
        }
        Write-Host "$(Write-GitWorkingDirStatus $status)" -NoNewline
        Write-Host "$(Write-GitIndexStatus $status)" -NoNewline

        Write-Host "]" -ForegroundColor White -NoNewline
        Write-Host "$ " -NoNewline
    }

    return "`e[5 q"
}

# Custom Functions
function Connect-RemoteServer () {
    if ($RemoteServer) {
        ssh.exe $RemoteServer
    }
    else {
        Write-Error "Specify the `$RemoteServer variable in your profile!`n`t($($PROFILE.CurrentUserAllHosts))"
    }
}

function Open-NewWindow () {
    Start-Process pwsh.exe
}

function Edit-InVim ($file) {
    $file = $file -replace "\\", "/" -replace " ", "\ "
    $null = $file -match "([A-Za-z]):/"
    if ($Matches) {
        $file = $file -replace "$($Matches[1]):", "/mnt/$($Matches[1].toLower())"
    }
    bash -c "nvim $file"
}

function Get-AllChildItems {
    return Get-ChildItem @args -Force
}

function Format-Size([int64] $size) {
    if ($size -lt 1024) { return "{0} B" -f ($size) }
    if ($size -lt 1Mb) { return "{0:0.0} KB" -f ($size / 1Kb) }
    if ($size -lt 1Gb) { return "{0:0.0} MB" -f ($size / 1Mb) }
    return "{0:0.0} GB" -f ($size / 1Gb)
}

function Get-ChildSize($path = ".") {
    Get-ChildItem $path |
    ForEach-Object {
        $file = $_.Name
        Get-ChildItem -File -Recurse $_.FullName | Measure-Object -Property length -Sum |
        Select-Object -Property @{Name = "Name"; Expression = { $file } },
        @{Name = "Size"; Expression = { Format-Size($_.Sum) } },
        @{Name = "Length"; Expression = { $_.Sum } }
    }
}

function Invoke-AsAdmin {
    if ([Security.Principal.WindowsIdentity]::GetCurrent().Groups -contains 'S-1-5-32-544') {
        Invoke-Expression -Command "$args"
    }
    else {
        Start-Process -Verb RunAs pwsh.exe -Args "-executionpolicy bypass -command Set-Location \`"$PWD\`"; $args; pause"
    }
}

function Update-Path($path = $null) {
    if ($null -eq $path) {
        $entries = @()
        $ENV:Path -Split ";" | ForEach-Object {
            $entries += [Pscustomobject]@{Entries = $_ }
        }
        return $entries
    }
    else {
        $ENV:Path = $path
    }
}

Remove-Item alias:nv -Force
Set-Alias -Name nv -Value Edit-InVim
Set-Alias -Name du -Value Get-ChildSize
Set-Alias -Name path -Value Update-Path
Set-Alias -Name sudo -Value Invoke-AsAdmin
Set-Alias -Name open -Value Open-NewWindow
Set-Alias -Name la -Value Get-AllChildItems
Set-Alias -Name cs -Value Connect-RemoteServer

Import-Module PSColor