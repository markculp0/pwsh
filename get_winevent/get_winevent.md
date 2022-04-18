
***

## Get-WinEvent

***

* Export Security log to CSV

```
  get-winevent -log security -max 5 | select -p TimeCreated,Message | epcsv -path my.csv
  
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
***
