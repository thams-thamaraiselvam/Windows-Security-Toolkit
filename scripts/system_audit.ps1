$ReportPath = ".\reports\system_audit_report.txt"

If (!(Test-Path ".\reports"))
{
New-Item -ItemType Directory -Path ".\reports"
}

"===== SYSTEM AUDIT REPORT =====" | Out-File $ReportPath

"Hostname: $env:COMPUTERNAME" | Out-File $ReportPath -Append
"Username: $env:USERNAME" | Out-File $ReportPath -Append

Get-CimInstance Win32_OperatingSystem |
Select Caption, Version |
Out-File $ReportPath -Append

Write-Host "Audit report generated."
