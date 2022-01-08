
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


function Print-MyTimeZones($instDateTime, $instTimeZone)
{
  # Set time zone pad equal to 21 
  # characters: CST length
  $tzIdPad = $instTimeZone.Id.Length
  $tzIdPad = 21 - $tzIdPad
  $tzIdPad = " " * $tzIdPad
  
  # Set time zone offset pad 
  $tzOffsetPad = ""
  if ($instTimeZone.BaseUtcOffset.Hours -ge 0)
  {
    $tzOffsetPad = "+"
  }
  
  "  " + "{0:yyyy-MM-dd HH:mm:ss}" -f $instDateTime + " | " + $tzOffsetPad + $instTimeZone.BaseUtcOffset + 
  " | " + $instTimeZone.Id + $tzIdPad + " | " + "{0:dddd}" -f $instDateTime  
  
}

# Public function to list time zones
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
  Print-MyTimeZones $currDateTime $currTimeZone
  # UTC 
  Print-MyTimeZones $utcDateTime $utcTimeZone
  # India
  Print-MyTimeZones $indiaDateTime $indiaTimeZone
  # China  
  Print-MyTimeZones $chinaDateTime $chinaTimeZone
  
}

# Main program loop
if ($SomeDateTime -eq "")
{
  Get-MyTimeZones
} 

# Alternative names for command
Set-Alias gmtz Get-MyTimeZones
Set-Alias DomainSpecificVerb-Info Get-MyTimeZones

# Export specific command 
Export-ModuleMember -Function Get-MyTimeZones
Export-ModuleMember -Alias gmtz,DomainSpecificVerb-Info

