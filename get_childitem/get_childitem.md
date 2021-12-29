
***

## Get-ChildItem: ls, dir, gci

***

#### Files only, filename only

```
  Get-ChildItem -Name -File   
  
  gci -n -file

```

***

#### Directories only, filename only

```
  Get-ChildItem -Name -Directory
  
  gci -n -dir

```

***

#### Out-File list to text file

```
  Get-ChildItem -Name -File 
    | Out-File -Encoding ASCII ./file_list.txt

```

***

#### Export-Csv (epcsv)

```
  
  Get-ChildItem 
    | Select-Object -Property LastWriteTime, Name, Mode, Length
    | Export-Csv ./dir_list.csv

```

***

#### Format-Table (ft)

```
  Get-ChildItem -File 
    | Select-Object -Property LastWriteTime, Name
    | Sort-Object -Property LastWriteTime
    | Format-Table

```

***
***
