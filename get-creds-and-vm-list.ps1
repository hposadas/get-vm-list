$VC_Servers_To_Scan = @('172.17.71.21')

Write-Host "CONNECTING TO VCs, PROVIDE CREDENTIALS"

#$Creds = Get-Credential
$USERNAME
$PASSWORD

#CONNECT TO VC SERVER

foreach($VIServer in $VC_Servers_To_Scan){

    Write-Host -ForegroundColor Green "CONNECTING TO $VIServer..."

    #$Blank = Connect-VIServer $VIServer -Credential $Creds -ErrorAction SilentlyContinue -WarningAction SilentlyContinue
    $Blank = Connect-VIServer $VIServer -User $USERNAME -Password $PASSWORD -ErrorAction SilentlyContinue -WarningAction SilentlyContinue

    Get-VM -Name *
}
