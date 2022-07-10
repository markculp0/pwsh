
***

## Get-WinEvent

***

* Export Security log to CSV

```
  # pwsh
  get-winevent -log security -max 5 | select -p TimeCreated,Message | epcsv -path my.csv
  
  # wevtutil
  wevtutil epl Security c:\temp\sec.bak.evtx
  
  # see logparser script
  
```

***

* Display log in Format-Table

```
  get-winevent -log security -max 5 `
  | select -p TimeCreated,Id,LevelDisplayName,Message `
  | FT

```

***

* Export Sysmon log to JSON

```
  get-winevent -log Microsoft-Windows-Sysmon/Operational -max 5 `
  | select -p TimeCreated, Id, LevelDisplayName, MachineName, `
    ProviderName, Message `
  | convertto-json `
  | out-file -encoding ascii -path .\log.json 
  

``` 

***

#### Scripts

***

Export log with wevtutil

* [export-eventlog.ps1](export-eventlog.ps1)

Parse log with logparser

* [get-sec4628evtlog.ps1](get-sec4628evtlog.ps1)


***
***
