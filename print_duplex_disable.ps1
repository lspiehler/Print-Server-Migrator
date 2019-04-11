#this will configure all printers for single-sided printing

Get-Printer | Get-PrintConfiguration | Where-Object {$_.DuplexingMode -ne "OneSided"} | % {
	Set-PrintConfiguration -PrinterName "$($_.PrinterName)" -DuplexingMode "OneSided"
}