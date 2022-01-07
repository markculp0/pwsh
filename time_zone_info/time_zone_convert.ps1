###################
#
# Get-MyTimeZones
#
# 2021-01-07, mac
#
###################

<# 

.SYNOPSIS

Get my working time zones

#>

param(
  ## First argument is optional
  [String] $SomeDateTime = ""
)

Set-StrictMode -Version Latest

function Get-MyTimeZones 
{
  # My current date time and zone 
  $currDateTime = Get-Date
  $currTimeZone = Get-TimeZone

  # Convert to UTC
  $utcTimeZone = [TimeZoneInfo]::GetSystemTimeZones() | 
      Where-Object Id -match "GMT Standard Time"
  $utcDateTime = [TimeZoneInfo]::ConvertTime($currDateTime, $utcTimeZone)
  
  # Convert to India Time 
  $indiaTimeZone = [TimeZoneInfo]::GetSystemTimeZones() |
      Where-Object Id -match India
  $indiaDateTime = [TimeZoneInfo]::ConvertTime($currDateTime, $indiaTimeZone)
  
  # Convert to China Time 
  $chinaTimeZone = [TimeZoneInfo]::GetSystemTimeZones() |
      Where-Object Id -match China
  $chinaDateTime = [TimeZoneInfo]::ConvertTime($currDateTime, $chinaTimeZone)
  
  
  # Print date times to terminal ################
  
  # Current time
  "  " + "{0:yyyy-MM-dd HH:mm:ss}" -f $currDateTime + " | " + $currTimeZone.BaseUtcOffset + " | "+ $currTimeZone.Id + " | " + "{0:dddd}" -f $currDateTime
  
  # UTC 
  "  " + "{0:yyyy-MM-dd HH:mm:ss}" -f $utcDateTime  + " | "  + "+" + $utcTimeZone.BaseUtcOffset + " | " + $utcTimeZone.Id + "     | " + "{0:dddd}" -f $utcDateTime
  
  # India
  "  " + "{0:yyyy-MM-dd HH:mm:ss}" -f $indiaDateTime  + " | "  + "+" + $indiaTimeZone.BaseUtcOffset + " | " + $indiaTimeZone.Id + "   | " + "{0:dddd}" -f $indiaDateTime
  
  # China
  "  " + "{0:yyyy-MM-dd HH:mm:ss}" -f $chinaDateTime  + " | "  + "+" + $chinaTimeZone.BaseUtcOffset + " | " + $chinaTimeZone.Id + "   | " + "{0:dddd}" -f $chinaDateTime
}

if ($SomeDateTime -eq "")
{
  Get-MyTimeZones
} 