# MassPing.ps1 (Custom for your network)
$ipList = @(
    "10.0.0.1",       # Your default gateway/router
    "10.0.0.50",      # Another IP to test (could be a printer or another PC)
    "10.0.0.100",     # Mid-range IP
    "8.8.8.8"         # Google DNS (to test external reachability)
)

foreach ($ip in $ipList) {
    if (Test-Connection -ComputerName $ip -Count 1 -Quiet) {
        Write-Host "$ip is reachable" -ForegroundColor Green
    } else {
        Write-Host "$ip is not reachable" -ForegroundColor Red
    }
}
