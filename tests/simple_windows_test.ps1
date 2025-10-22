# Simple Windows Validation Test
Write-Host "Starting Windows Validation Test..."
Write-Host "System Information:"
Write-Host "Computer Name: APPAR"
Write-Host "OS Version: Microsoft Windows 11 Pro"
Write-Host "Architecture: x64-based PC"
Write-Host "Uptime: 02:04:16.4979702"

Write-Host "
Checking Windows Services..."
 = @("Spooler", "BITS", "Windows Update")
foreach ( in ) {
     = Get-Service -Name  -ErrorAction SilentlyContinue
    if () {
        Write-Host "  : "
    } else {
        Write-Host "  : Not found"
    }
}

Write-Host "
Checking Windows Defender..."
try {
     = Get-MpComputerStatus -ErrorAction SilentlyContinue
    if () {
        Write-Host " Windows Defender: Enabled"
    } else {
        Write-Host " Windows Defender: Not accessible"
    }
} catch {
    Write-Host " Windows Defender: Error - "
}

Write-Host "
Checking Firewall..."
 = Get-NetFirewallProfile
foreach (C:\Users\appar\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 in ) {
     = if (C:\Users\appar\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1.Enabled) { "Enabled" } else { "Disabled" }
    Write-Host " Firewall : "
}

Write-Host "
Windows Validation Test Completed!"
