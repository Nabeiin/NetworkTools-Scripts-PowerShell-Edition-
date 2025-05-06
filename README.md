
# NetworkTools-Scripts (PowerShell Edition)
A collection of basic PowerShell scripts used in day-to-day network diagnostics and system administration.
## Scripts Included:

### 1. `Get-IPInfo.ps1`
Displays:
- IP Address
- Default Gateway
- DNS Servers
- Interface Info
Used to quickly gather network config information.

## Sample Output

![ipinfo](https://github.com/user-attachments/assets/f52b085d-dff9-4e54-a246-c35b29fe3505)

---

### 2. `MassPing.ps1`
Pings a predefined list of IPs and shows if each one is reachable.
Example IPs used:
- `10.0.0.1` (Default Gateway)
- `10.0.0.50` and `10.0.0.100` (Test IPs)
- `8.8.8.8` (Google DNS)

## Sample Output

![massping](https://github.com/user-attachments/assets/7345d664-09f6-410f-9116-164914049689)

### 3. `Traceroute.ps1`
$target = Read-Host "Enter a hostname or IP to trace"
Write-Host "`nTracing route to $target ..." -ForegroundColor Cyan
tracert $target

## Sample Output
![image](https://github.com/user-attachments/assets/f7432e29-7859-4348-ba72-80f566ad362e)
