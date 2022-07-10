
***

## ConvertFrom-String (pwsh awk)

***

#### Convert string to object

```
  $d = "[ ]+(?=\d|Services|Console)"

  $output = tasklist | Select -Skip 3 | ConvertFrom-String -Delimiter $d
  
  $output | Format-Table

```

***
***
