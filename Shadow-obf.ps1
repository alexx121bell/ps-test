function Get-Shadow
{
    ${11} = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent())
    if (-not ${11}.IsInRole([Security.Principal.WindowsBuiltInRole]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBkAG0AaQBuAGkAcwB0AHIAYQB0AG8AcgA=')))))
    {
        Throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WQBvAHUAIABtAHUAcwB0ACAAcgB1AG4AIABHAGUAdAAtAFYAbwBsAHUAbQBlAFMAaABhAGQAbwB3AEMAbwBwAHkAIABmAHIAbwBtACAAYQBuACAAZQBsAGUAdgBhAHQAZQBkACAAYwBvAG0AbQBhAG4AZAAgAHAAcgBvAG0AcAB0AC4A')))
    }
    gwmi -Namespace root\cimv2 -Class Win32_ShadowCopy | % { $_.DeviceObject }
}
function New-Shadow
{
    Param(
        [Parameter(Mandatory = $True)]
        [ValidatePattern('^\w:\\')]
        [String]
        $Volume,
        [Parameter(Mandatory = $False)]
        [ValidateSet("ClientAccessible")]
        [String]
        $Context = "ClientAccessible"
    )
    ${11} = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent())
    if (-not ${11}.IsInRole([Security.Principal.WindowsBuiltInRole]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBkAG0AaQBuAGkAcwB0AHIAYQB0AG8AcgA=')))))
    {
        Throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WQBvAHUAIABtAHUAcwB0ACAAcgB1AG4AIABHAGUAdAAtAFYAbwBsAHUAbQBlAFMAaABhAGQAbwB3AEMAbwBwAHkAIABmAHIAbwBtACAAYQBuACAAZQBsAGUAdgBhAHQAZQBkACAAYwBvAG0AbQBhAG4AZAAgAHAAcgBvAG0AcAB0AC4A')))
    }
    ${12} = (gsv -Name VSS).Status
    ${14} = [WMICLASS]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cgBvAG8AdABcAGMAaQBtAHYAMgA6AHcAaQBuADMAMgBfAHMAaABhAGQAbwB3AGMAbwBwAHkA')))
    ${13} = ${14}.create($ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JABWAG8AbAB1AG0AZQA='))), $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JABDAG8AbgB0AGUAeAB0AA=='))))
    switch(${13}.returnvalue)
    {
        1 {Write-Error $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGMAZQBzAHMAIABkAGUAbgBpAGUAZAAuAA=='))); break}
        2 {Write-Error $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHYAYQBsAGkAZAAgAGEAcgBnAHUAbQBlAG4AdAAuAA=='))); break}
        3 {Write-Error $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBwAGUAYwBpAGYAaQBlAGQAIAB2AG8AbAB1AG0AZQAgAG4AbwB0ACAAZgBvAHUAbgBkAC4A'))); break}
        4 {Write-Error $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBwAGUAYwBpAGYAaQBlAGQAIAB2AG8AbAB1AG0AZQAgAG4AbwB0ACAAcwB1AHAAcABvAHIAdABlAGQALgA='))); break}
        5 {Write-Error $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAHMAdQBwAHAAbwByAHQAZQBkACAAcwBoAGEAZABvAHcAIABjAG8AcAB5ACAAYwBvAG4AdABlAHgAdAAuAA=='))); break}
        6 {Write-Error $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHMAdQBmAGYAaQBjAGkAZQBuAHQAIABzAHQAbwByAGEAZwBlAC4A'))); break}
        7 {Write-Error $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VgBvAGwAdQBtAGUAIABpAHMAIABpAG4AIAB1AHMAZQAuAA=='))); break}
        8 {Write-Error $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAHgAaQBtAHUAbQAgAG4AdQBtAGIAZQByACAAbwBmACAAcwBoAGEAZABvAHcAIABjAG8AcABpAGUAcwAgAHIAZQBhAGMAaABlAGQALgA='))); break}
        9 {Write-Error $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBuAG8AdABoAGUAcgAgAHMAaABhAGQAbwB3ACAAYwBvAHAAeQAgAG8AcABlAHIAYQB0AGkAbwBuACAAaQBzACAAYQBsAHIAZQBhAGQAeQAgAGkAbgAgAHAAcgBvAGcAcgBlAHMAcwAuAA=='))); break}
        10 {Write-Error $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBoAGEAZABvAHcAIABjAG8AcAB5ACAAcAByAG8AdgBpAGQAZQByACAAdgBlAHQAbwBlAGQAIAB0AGgAZQAgAG8AcABlAHIAYQB0AGkAbwBuAC4A'))); break}
        11 {Write-Error $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBoAGEAZABvAHcAIABjAG8AcAB5ACAAcAByAG8AdgBpAGQAZQByACAAbgBvAHQAIAByAGUAZwBpAHMAdABlAHIAZQBkAC4A'))); break}
        12 {Write-Error $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBoAGEAZABvAHcAIABjAG8AcAB5ACAAcAByAG8AdgBpAGQAZQByACAAZgBhAGkAbAB1AHIAZQAuAA=='))); break}
        13 {Write-Error $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGsAbgBvAHcAbgAgAGUAcgByAG8AcgAuAA=='))); break}
        default {break}
    }
    if(${12} -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AG8AcABwAGUAZAA='))))
    {
        spsv -Name VSS
    }
}
function Remove-Shadow
{
    [CmdletBinding(SupportsShouldProcess = $True)]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True)]
        [ValidatePattern('^\\\\\?\\GLOBALROOT\\Device\\HarddiskVolumeShadowCopy[0-9]{1,3}$')]
        [String]
        $DevicePath
    )
    PROCESS
    {
        if($PSCmdlet.ShouldProcess($ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABoAGUAIABWAG8AbAB1AG0AZQBTAGgAYQBkAG8AdwBDAG8AcAB5ACAAYQB0ACAARABlAHYAaQBjAGUAUABhAHQAaAAgACQARABlAHYAaQBjAGUAUABhAHQAaAAgAHcAaQBsAGwAIABiAGUAIAByAGUAbQBvAHYAZQBkAA==')))))
        {
            (gwmi -Namespace root\cimv2 -Class Win32_ShadowCopy | ? {$_.DeviceObject -eq $DevicePath}).Delete()
        }
    }
}
function Mount-Shadow
{
    Param (
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $Path,
        [Parameter(Mandatory = $True, ValueFromPipeline = $True)]
        [ValidatePattern('^\\\\\?\\GLOBALROOT\\Device\\HarddiskVolumeShadowCopy[0-9]{1,3}$')]
        [String[]]
        $DevicePath
    )
    BEGIN
    {
        ${11} = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent())
        if (-not ${11}.IsInRole([Security.Principal.WindowsBuiltInRole]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBkAG0AaQBuAGkAcwB0AHIAYQB0AG8AcgA=')))))
        {
            Throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WQBvAHUAIABtAHUAcwB0ACAAcgB1AG4AIABHAGUAdAAtAFYAbwBsAHUAbQBlAFMAaABhAGQAbwB3AEMAbwBwAHkAIABmAHIAbwBtACAAYQBuACAAZQBsAGUAdgBhAHQAZQBkACAAYwBvAG0AbQBhAG4AZAAgAHAAcgBvAG0AcAB0AC4A')))
        }
        ls $Path -ErrorAction Stop | Out-Null
        ${10} = New-Object System.Reflection.AssemblyName($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VgBTAFMAVQB0AGkAbAA='))))
        ${9} = [AppDomain]::CurrentDomain.DefineDynamicAssembly(${10}, [Reflection.Emit.AssemblyBuilderAccess]::Run)
        ${8} = ${9}.DefineDynamicModule($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VgBTAFMAVQB0AGkAbAA='))), $False)
        ${3} = ${8}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VgBTAFMALgBLAGUAcgBuAGUAbAAzADIA'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMALAAgAEMAbABhAHMAcwA='))))
        ${5} = ${3}.DefinePInvokeMethod($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AGUAUwB5AG0AYgBvAGwAaQBjAEwAaQBuAGsA'))),
                                                            $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('awBlAHIAbgBlAGwAMwAyAC4AZABsAGwA'))),
                                                            ([Reflection.MethodAttributes]::Public -bor [Reflection.MethodAttributes]::Static),
                                                            [Reflection.CallingConventions]::Standard,
                                                            [Bool],
                                                            [Type[]]@([String], [String], [UInt32]),
                                                            [Runtime.InteropServices.CallingConvention]::Winapi,
                                                            [Runtime.InteropServices.CharSet]::Auto)
        ${7} = [Runtime.InteropServices.DllImportAttribute].GetConstructor(@([String]))
        ${6} = [Runtime.InteropServices.DllImportAttribute].GetField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQATABhAHMAdABFAHIAcgBvAHIA'))))
        ${4} = New-Object Reflection.Emit.CustomAttributeBuilder(${7},
                                                                                         @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('awBlAHIAbgBlAGwAMwAyAC4AZABsAGwA')))),
                                                                                         [Reflection.FieldInfo[]]@(${6}),
                                                                                         @($true))
        ${5}.SetCustomAttribute(${4})
        ${2} = ${3}.CreateType()
    }
    PROCESS
    {
        foreach ($Volume in $DevicePath)
        {
            $Volume -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBcAFwAXABcAFwAPwBcAFwARwBMAE8AQgBBAEwAUgBPAE8AVABcAFwARABlAHYAaQBjAGUAXABcACgAPwA8AEwAaQBuAGsATgBhAG0AZQA+AEgAYQByAGQAZABpAHMAawBWAG8AbAB1AG0AZQBTAGgAYQBkAG8AdwBDAG8AcAB5AFsAMAAtADkAXQB7ADEALAAzAH0AKQAkAA=='))) | Out-Null
            ${1} = Join-Path $Path $Matches.LinkName
            if (Test-Path ${1})
            {
                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JwAkAHsAMQB9ACcAIABhAGwAcgBlAGEAZAB5ACAAZQB4AGkAcwB0AHMALgA=')))
                continue
            }
            if (-not ${2}::CreateSymbolicLink(${1}, "$($Volume)\", 1))
            {
                Write-Error $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB5AG0AYgBvAGwAaQBjACAAbABpAG4AawAgAGMAcgBlAGEAdABpAG8AbgAgAGYAYQBpAGwAZQBkACAAZgBvAHIAIAAnACQAVgBvAGwAdQBtAGUAJwAuAA==')))
                continue
            }
            gi ${1}
        }
    }
    END
    {
    }
}
