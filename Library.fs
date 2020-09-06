namespace FSharpPowerShell

open System.Management.Automation

[<Cmdlet("Invoke", "MyCmdlet")>]
type public InvokeMyCmdlet() =

    inherit PSCmdlet ()
    // https://docs.microsoft.com/en-us/dotnet/api/system.management.automation.cmdlet?view=powershellsdk-7.0.0#remarks

    override this.EndProcessing () =
        this.WriteObject "PowerShell Cmdlet written in F#"
