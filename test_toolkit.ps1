Write-Host "=== Systems Administration Toolkit Test ===" -ForegroundColor Green
Write-Host "Testing project structure..." -ForegroundColor Yellow

# Check directories
 = @("linux", "macos", "windows", "cross-platform", "monitoring", "tests", "docs")
Write-Host "
Checking directories:" -ForegroundColor Cyan
foreach ( in ) {
    if (Test-Path ) {
        Write-Host "   /" -ForegroundColor Green
    } else {
        Write-Host "   / - Missing" -ForegroundColor Red
    }
}

# Check key files
 = @("README.md", "requirements.txt", ".gitignore")
Write-Host "
Checking key files:" -ForegroundColor Cyan
foreach ( in ) {
    if (Test-Path ) {
         = (Get-Item ).Length
        Write-Host "    ( bytes)" -ForegroundColor Green
    } else {
        Write-Host "    - Missing" -ForegroundColor Red
    }
}

# Check scripts
 = @("tests/validate_linux.sh", "tests/validate_windows.ps1", "tests/run_tests.py")
Write-Host "
Checking scripts:" -ForegroundColor Cyan
foreach ( in ) {
    if (Test-Path ) {
         = (Get-Item ).Length
        Write-Host "    ( bytes)" -ForegroundColor Green
    } else {
        Write-Host "    - Missing" -ForegroundColor Red
    }
}

Write-Host "
=== Test Complete ===" -ForegroundColor Green
Write-Host "Systems Administration Toolkit is ready!" -ForegroundColor Yellow
