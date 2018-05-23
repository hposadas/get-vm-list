#Set-PowerCLIConfiguration -InvalidCertificateAction Ignore

connect-viserver -server 172.17.71.21 -WarningAction SilentlyContinue

Get-VM
