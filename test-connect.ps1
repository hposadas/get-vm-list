#Set-PowerCLIConfiguration -InvalidCertificateAction Ignore

Set-PowerCLIConfiguration -Scope User -ParticipateInCEIP $false

# Staging vcenter 172.16.168.21
connect-viserver -server 172.16.168.21 -WarningAction SilentlyContinue

# Prod vcenter - NA16 mgmt
#connect-viserver -server 172.17.71.21 -WarningAction SilentlyContinue

Get-VM
