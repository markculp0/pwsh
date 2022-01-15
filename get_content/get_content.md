
***

## Get-Content (gc, ${})

***

#### Get content from a file: stream it line by line

```
  $content = Get-Content .\file.txt
  
  $content = gc .\file.txt
  
  $content = ${c:\path\file.txt}
  
  # Reads all of file into memory: not streams
  $content = [System.IO.File]::ReadAllLines("c:\path\file.txt")

```

***

#### Read entire file contents

```
  $content = Get-Content .\file.txt -Raw

  $content = [System.IO.File]::ReadAllText("c:\path\file.txt")
  
```

***

#### Read some lines 

```
  Get-Content .\file.txt -ReadCount 10

  gc .\file.txt -r 10

```

***

#### Specify a delimiter

```
  Get-Content -Delimiter " " .\file.txt

  gc -del " " .\file.txt
  
  bla
  bla
  rar
  rar
  cac
  cac

```

***
***
