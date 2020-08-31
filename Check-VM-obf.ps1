
function Check-VM
{
    [CmdletBinding()] Param()
    $ErrorActionPreference = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAGwAZQBuAHQAbAB5AEMAbwBuAHQAaQBuAHUAZQA=')))
    ${12} = ls HKLM:\SOFTWARE\Microsoft
    if ((${12} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SAB5AHAAZQByAC0AVgA=')))) -or (${12} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VgBpAHIAdAB1AGEAbABNAGEAYwBoAGkAbgBlAA==')))))
        {
            ${11} = $true
        }
    if (!${11})
        {
            ${12} = gp hklm:\HARDWARE\DESCRIPTION\System -Name SystemBiosVersion
            if (${12} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgByAHQAdQBhAGwA'))))
                {
                    ${11} = $true
                }
        }
    if (!${11})
        {
            ${12} = ls HKLM:\HARDWARE\ACPI\FADT
            if (${12} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgByAHQAdQBhAGwA'))))
                {
                    ${11} = $true
                }
        }
    if (!${11})
        {
            ${12} = ls HKLM:\HARDWARE\ACPI\RSDT
            if (${12} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgByAHQAdQBhAGwA'))))
                {
                    ${11} = $true
                }
        }
    if (!${11})
        {
            ${12} = ls HKLM:\SYSTEM\ControlSet001\Services
            if ((${12} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBtAGkAYwBoAGUAYQByAHQAYgBlAGEAdAA=')))) -or (${12} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBtAGkAYwB2AHMAcwA=')))) -or (${12} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBtAGkAYwBzAGgAdQB0AGQAbwB3AG4A')))) -or (${12} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBtAGkAZQB4AGMAaABhAG4AZwBlAA==')))))
                {
                    ${11} = $true
                }
        }
    if (${11})
        {
             $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABoAGkAcwAgAGkAcwAgAGEAIABIAHkAcABlAHIALQBWACAAbQBhAGMAaABpAG4AZQAuAA==')))
        }
    ${10} = ls HKLM:\SYSTEM\ControlSet001\Services
    if ((${10} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBtAGQAZQBiAHUAZwA=')))) -or (${10} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBtAG0AbwB1AHMAZQA=')))) -or (${10} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VgBNAFQAbwBvAGwAcwA=')))) -or (${10} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VgBNAE0ARQBNAEMAVABMAA==')))))
        {
            ${9} = $true
        }
    if (!${9})
        {
            ${10} = gp hklm:\HARDWARE\DESCRIPTION\System\BIOS -Name SystemManufacturer
            if (${10} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBtAHcAYQByAGUA'))))
                {
                    ${9} = $true
                }
        }
    if (!${9})
        {
            ${10} = Get-Childitem hklm:\hardware\devicemap\scsi -recurse | gp -Name identifier
            if (${10} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBtAHcAYQByAGUA'))))
                {
                    ${9} = $true
                }
        }
    if (!${9})
        {
            ${10} = ps
            if ((${10} -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBtAHcAYQByAGUAdQBzAGUAcgAuAGUAeABlAA==')))) -or (${10} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBtAHcAYQByAGUAdAByAGEAeQAuAGUAeABlAA==')))))
                {
                    ${9} = $true
                }
        }
    if (${9})
        {
             $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABoAGkAcwAgAGkAcwAgAGEAIABWAE0AVwBhAHIAZQAgAG0AYQBjAGgAaQBuAGUALgA=')))
        }
    ${8} = ps
    if ((${8} -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBtAHUAcwByAHYAYwAuAGUAeABlAA==')))) -or (${8} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBtAHMAcgB2AGMALgBlAHgAZQA=')))))
        {
        ${7} = $true
        }
    if (!${7})
        {
            ${8} = ps
            if ((${8} -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBtAHcAYQByAGUAdQBzAGUAcgAuAGUAeABlAA==')))) -or (${8} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBtAHcAYQByAGUAdAByAGEAeQAuAGUAeABlAA==')))))
                {
                    ${7} = $true
                }
        }
    if (!${7})
        {
            ${8} = ls HKLM:\SYSTEM\ControlSet001\Services
            if ((${8} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBwAGMALQBzADMA')))) -or (${8} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBwAGMAdQBoAHUAYgA=')))) -or (${8} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBzAHYAbQBtAG8AdQBmAA==')))))
                {
                    ${7} = $true
                }
        }
    if (${7})
        {
         $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABoAGkAcwAgAGkAcwAgAGEAIABWAGkAcgB0AHUAYQBsACAAUABDAC4A')))
        }
    ${6} = ps
    if ((${6} -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBiAG8AeABzAGUAcgB2AGkAYwBlAC4AZQB4AGUA')))) -or (${6} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBiAG8AeAB0AHIAYQB5AC4AZQB4AGUA')))))
        {
        ${5} = $true
        }
    if (!${5})
        {
            ${6} = ls HKLM:\HARDWARE\ACPI\FADT
            if (${6} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBiAG8AeABfAA=='))))
                {
                    ${5} = $true
                }
        }
    if (!${5})
        {
            ${6} = ls HKLM:\HARDWARE\ACPI\RSDT
            if (${6} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBiAG8AeABfAA=='))))
                {
                    ${5} = $true
                }
        }
    if (!${5})
        {
            ${6} = Get-Childitem hklm:\hardware\devicemap\scsi -recurse | gp -Name identifier
            if (${6} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBiAG8AeAA='))))
                {
                    ${5} = $true
                }
        }
    if (!${5})
        {
            ${6} = gp hklm:\HARDWARE\DESCRIPTION\System -Name SystemBiosVersion
            if (${6} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBiAG8AeAA='))))
                {
                     ${5} = $true
                }
        }
    if (!${5})
        {
            ${6} = ls HKLM:\SYSTEM\ControlSet001\Services
            if ((${6} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VgBCAG8AeABNAG8AdQBzAGUA')))) -or (${6} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VgBCAG8AeABHAHUAZQBzAHQA')))) -or (${6} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VgBCAG8AeABTAGUAcgB2AGkAYwBlAA==')))) -or (${6} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VgBCAG8AeABTAEYA')))))
                {
                    ${5} = $true
                }
        }
    if (${5})
        {
         $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABoAGkAcwAgAGkAcwAgAGEAIABWAGkAcgB0AHUAYQBsACAAQgBvAHgALgA=')))
        }
    ${4} = ps
    if (${4} -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('eABlAG4AcwBlAHIAdgBpAGMAZQAuAGUAeABlAA=='))))
        {
        ${3} = $true
        }
    if (!${3})
        {
            ${4} = ls HKLM:\HARDWARE\ACPI\FADT
            if (${4} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('eABlAG4A'))))
                {
                    ${3} = $true
                }
        }
    if (!${3})
        {
            ${4} = ls HKLM:\HARDWARE\ACPI\DSDT
            if (${4} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('eABlAG4A'))))
                {
                    ${3} = $true
                }
        }
    if (!${3})
        {
            ${4} = ls HKLM:\HARDWARE\ACPI\RSDT
            if (${4} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('eABlAG4A'))))
                {
                    ${3} = $true
                }
        }
    if (!${3})
        {
           ${4} = ls HKLM:\SYSTEM\ControlSet001\Services
            if ((${4} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('eABlAG4AZQB2AHQAYwBoAG4A')))) -or (${4} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('eABlAG4AbgBlAHQA')))) -or (${4} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('eABlAG4AbgBlAHQANgA=')))) -or (${4} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('eABlAG4AcwB2AGMA')))) -or (${4} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('eABlAG4AdgBkAGIA')))))
                {
                    ${3} = $true
                }
        }
    if (${3})
        {
         $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABoAGkAcwAgAGkAcwAgAGEAIABYAGUAbgAgAE0AYQBjAGgAaQBuAGUALgA=')))
        }
    ${2} = Get-Childitem hklm:\hardware\devicemap\scsi -recurse | gp -Name identifier
    if (${2} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cQBlAG0AdQA='))))
        {
            ${1} = $true
        }
    if (!${1})
        {
        ${2} = gp hklm:HARDWARE\DESCRIPTION\System\CentralProcessor\0 -Name ProcessorNameString
        if (${2} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cQBlAG0AdQA='))))
            {
                ${1} = $true
            }
        }    
    if (${1})
        {
         $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABoAGkAcwAgAGkAcwAgAGEAIABRAGUAbQB1ACAAbQBhAGMAaABpAG4AZQAuAA==')))
        }
}
