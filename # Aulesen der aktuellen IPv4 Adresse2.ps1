# Aulesen der aktuellen IPv4 Adresse 
$ip = (Get-NetIPAddress -InterfaceIndex 13 -AddressFamily IPv4).IPAddress
# Template Adresse, auf welche geprüft werden soll.
$iptemp = "10.255.3.118"

# Prüfe ob die IP-Adresse gleich ist
if ($ip -eq $iptemp) {
    Write-Host "IP-Adresse ist gleich"
    }
    else
    {
    write-Host "Nicht gleich"
    }