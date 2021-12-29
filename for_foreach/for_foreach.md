
***

## for | foreach

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
