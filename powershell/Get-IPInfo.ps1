# Get-IPInfo.ps1
Write-Host "Getting IP Configuration..." -ForegroundColor Cyan

$networkInfo = Get-NetIPAddress -AddressFamily IPv4 |
    Where-Object { $_.IPAddress -notlike "169.*" } |
    Select-Object InterfaceAlias, IPAddress, PrefixLength

$gateway = Get-NetRoute -DestinationPrefix "0.0.0.0/0" | Select-Object -First 1 -ExpandProperty NextHop

$dnsServers = Get-DnsClientServerAddress | Select-Object -ExpandProperty ServerAddresses

Write-Output "`n=== Network Details ==="
$networkInfo | Format-Table -AutoSize
Write-Output "`nDefault Gateway: $gateway"
Write-Output "DNS Servers: $($dnsServers -join ', ')"
