
***

## ForEach-Object cmdlet (%) 
## The for | foreach keywords (methods)

***

#### Work with items in a list

```
  1..10 | % { $_ * 2}
  
  Get-Process | % Name | % ToUpper

```

***

#### ForEach with script blocks

```
  # PSItem ($_)
  Get-Process | ForEach-Object { $_.Name }
  
  # -Begin -Process -End parameters
  $array = 1,2,3,4
  $array | ForEach-Object {$sum = 0} {$sum += $_} {$sum}
  
```

***

#### Enumerate properties 

```
  Start-Process pwsh
  Start-Process pwsh
  $processes = Get-Process -Name pwsh
  $processes[0].Id
  $processes.Id

```


***

#### Write 3 lines

```
  for ($i=0; $i -lt 3; $i++) {
    Write-Host $i;
  }
  
  0
  1
  2

```

***

#### Write array with 3 elements

```
  $nn = @(1,2,3)
  
  foreach ($n in $nn){
    Write-Host $n
  }
  
  1
  2
  3

```

***
***
