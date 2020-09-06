<#
.SYNOPSIS
    Script.ps1
.DESCRIPTION
    Loads a PowerShell module from a F# compiled .NET Core Assmbley
    and runs
.EXAMPLE
    PS C:\> .\Script.ps
    PowerShell Cmdlet written in F#
#>

[CmdletBinding()]

$module = "FSharpPowerShell"
$modpath = Join-Path $PSScriptRoot "$module.dll"

Import-Module $modpath

Get-Module $module

[System.Environment]::NewLine

Invoke-MyCmdlet