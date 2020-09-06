# FSharp PowerShell Module

Example of exporting a System.Management.Automation.PSCmdlet for use in
PowerShell.

## Usage

Local `dotnet` cli usage as follows:

```powershell
git clone https://github.com/cdituri/FSharpPowerShell
dotnet clean
dotnet restore
dotnet build
dotnet publish
dotnet msbuild -target:RunScript
```

## Docker

Docker-based build and release as follows:

```powershell
git clone https://github.com/cdituri/FSharpPowerShell
dotnet clean
dotnet restore
dotnet build
dotnet publish
dotnet msbuild -target:DockerBuild
dotnet msbuild -target:DockerRun
```
