# Traceroute.ps1
$target = Read-Host "Enter a hostname or IP to trace"
Write-Host "`nTracing route to $target ..." -ForegroundColor Cyan
tracert $target

