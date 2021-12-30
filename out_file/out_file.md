
***

## Out-File 

***

#### Write ASCII text to file

```
  Get-ChildItem 
    | Select-Object -Property LastWriteTime, Name, Mode, Length 
    | Out-File -FilePath ./dir_list.txt -Encoding ASCII 

```

***
***
