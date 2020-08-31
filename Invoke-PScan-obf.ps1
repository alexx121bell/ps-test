
function Invoke-PScan {
    [CmdletBinding()] Param(
        [parameter(Mandatory = $true, Position = 0)]
        [ValidatePattern("\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b")]
        [string]
        $StartAddress,
        [parameter(Mandatory = $true, Position = 1)]
        [ValidatePattern("\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b")]
        [string]
        $EndAddress,
        [switch]
        $ResolveHost,
        [switch]
        $ScanPort,
        [int[]]
        $Ports = @(21,22,23,53,69,71,80,98,110,139,111,389,443,445,1080,1433,2001,2049,3001,3128,5222,6667,6868,7777,7878,8080,1521,3306,3389,5801,5900,5555,5901),
        [int]
        $TimeOut = 100
    )  
    Begin {
    ${13} = New-Object System.Net.Networkinformation.Ping
    }
    Process {
    foreach(${6} in ($StartAddress.Split(".")[0]..$EndAddress.Split(".")[0])) {
        foreach(${5} in ($StartAddress.Split(".")[1]..$EndAddress.Split(".")[1])) {
        foreach(${4} in ($StartAddress.Split(".")[2]..$EndAddress.Split(".")[2])) {
            foreach(${3} in ($StartAddress.Split(".")[3]..$EndAddress.Split(".")[3])) {
            write-progress -activity PingSweep -status $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7ADYAfQAuACQAewA1AH0ALgAkAHsANAB9AC4AJAB7ADMAfQA='))) -percentcomplete ((${3}/($EndAddress.Split(".")[3])) * 100)
            ${10} = ${13}.Send($ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7ADYAfQAuACQAewA1AH0ALgAkAHsANAB9AC4AJAB7ADMAfQA='))),$TimeOut)
            if(${10}.Status -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB1AGMAYwBlAHMAcwA=')))) {
                if($ResolveHost) {
                write-progress -activity ResolveHost -status $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7ADYAfQAuACQAewA1AH0ALgAkAHsANAB9AC4AJAB7ADMAfQA='))) -percentcomplete ((${3}/($EndAddress.Split(".")[3])) * 100) -Id 1
                ${7} = [Net.DNS]::BeginGetHostEntry(${10}.Address, $null, $null)
                }
                if($ScanPort) {
                ${1} = @()
                for(${12} = 1; ${12} -le $ports.Count;${12}++) {
                    ${9} = $Ports[(${12}-1)]
                    write-progress -activity PortScan -status $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7ADYAfQAuACQAewA1AH0ALgAkAHsANAB9AC4AJAB7ADMAfQA='))) -percentcomplete ((${12}/($Ports.Count)) * 100) -Id 2
                    ${8} = New-Object System.Net.Sockets.TcpClient
                    ${11} = ${8}.BeginConnect(${10}.Address,${9},$null,$null)
                    if(${8}.Connected) {
                    ${1} += ${9}
                    } else {
                    sleep -Milli $TimeOut
                    if(${8}.Connected) {
                        ${1} += ${9}
                    }
                    }
                    ${8}.Close()
                }
                }
                if($ResolveHost) {
                ${2} = ([Net.DNS]::EndGetHostEntry([IAsyncResult]${7})).HostName
                }
                New-Object PSObject -Property @{
                IPAddress = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7ADYAfQAuACQAewA1AH0ALgAkAHsANAB9AC4AJAB7ADMAfQA=')));
                HostName = ${2};
                Ports = ${1}
                } | select IPAddress, HostName, Ports
            }
            }
        }
        }
    }
    }
    End {
    }
}
