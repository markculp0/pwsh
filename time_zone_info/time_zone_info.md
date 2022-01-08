
***

## TimeZoneInfo | DateTime

***

#### List available TimeZone Id's

```
  Get-TimeZone -ListAvailable
  
```

***

#### Format a DateTime as a timestamp string

```
  # Current DateTime
  Get-Date -Format o 
  
  # DateTime object
  Get-Date $utcTime -Format o
  
  # String
  Get-Date "1/01/2022 4:00 PM" -Format o

```

***

#### Cast a datetime string to DateTime object

```
  $sourceTime = [DateTime] "1/01/2022 4:00 PM"
  
  $sourceTime = [DateTime] "2022-01-01T16:00:00"

```

***

#### Verify the objects type: DateTime or String

```
  $sourceTime.GetType().Name 

```

***

#### Convert current user time to India time

```
  # My DateTime object
  $sourceTime = [DateTime] "1/01/2022 4:00 PM"
  
  # Target India time zone
  $targetTimeZone = [TimeZoneInfo]::GetSystemTimeZones() |
    Where-Object Id -match India
  
  # Convert to India time zone (2 arguments)
  $indiaTime = [TimeZoneInfo]::ConvertTime($sourceTime, $targetTimeZone)

```

***

#### Convert from India's time to Univeral Time 

```
  # Source time zone 
  $sourceTimeZone = [TimeZoneInfo]::GetSystemTimeZones() |
    Where-Object Id -match India 
  
  # Destination time zone 
  $destTimeZone = [TimeZoneInfo]::GetSystemTimeZones() |
    Where-Object Id -match "GMT Standard Time"
  
  # Convert from India to UTC time (3 arguments)
  $utcTime = [TimeZoneInfo]::ConvertTime($indiaTime, $sourceTimeZone, $destTimeZone )

```
***

#### Script

***

* [time_zone_conversion_example.ps1](time_zone_conversion_example.ps1)
* [time_zone_convert.ps1](time_zone_convert.ps1)
* [TimeZoneConvert.psm1](TimeZoneConvert.psm1)

***
***
