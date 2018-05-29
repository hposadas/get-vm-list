#Set-PowerCLIConfiguration -InvalidCertificateAction Ignore

Set-PowerCLIConfiguration -Scope User -ParticipateInCEIP $false

connect-viserver -server 172.17.71.21 -WarningAction SilentlyContinue

Get-VM
