#####################################
## Convert from my time to India time 
#####################################

# My DateTime object
$sourceTime = [DateTime] "1/01/2022 4:00 PM"

# Target India time zone
$targetTimeZone = [TimeZoneInfo]::GetSystemTimeZones() |
  Where-Object Id -match India

# Convert to India time zone (2 arguments)
$indiaTime = [TimeZoneInfo]::ConvertTime($sourceTime, $targetTimeZone)

Write-Host "`n" "India time:" $indiaTime

# PS:>  India time: 1/2/2022 3:30:00 AM

##############################################
## Convert from India's time to Univeral Time 
##############################################

# Source time zone 
$sourceTimeZone = [TimeZoneInfo]::GetSystemTimeZones() |
  Where-Object Id -match India 

# Destination time zone 
$destTimeZone = [TimeZoneInfo]::GetSystemTimeZones() |
  Where-Object Id -match "GMT Standard Time"

# Convert from India to UTC time (3 arguments)
$utcTime = [TimeZoneInfo]::ConvertTime($indiaTime, $sourceTimeZone, $destTimeZone )
  
Write-Host "   UTC time:" $utcTime "`n" 

# PS:>  UTC time: 1/1/2022 10:00:00 PM
