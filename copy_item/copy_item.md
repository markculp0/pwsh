
***

## Copy-Item (copy, cp, cpi)

***

#### Copy a file

```
  Copy-Item "file.txt" -Destination "..\"
  
  cp .\file.txt ..
  
  cpi .\file.txt ~
  

```

***

#### Copy a directory

```
  Copy-Item -Path .\mydir -Destination "C:\Users\bubba\OneDrive\Documents" -Recurse

```

***

#### Copy files to a directory

```
  Copy-Item .\file.txt -Destination "\\Server\remote_dir"

  Copy-Item -Path .\mydir\* -Destination "C:\Users\bubba\OneDrive\Documents\dest" -Recurse

```

***

#### Copy file to remote computer

```
  $Session = New-PSSession -ComputerName "Server" -Credential "Contoso\User"
  
  Copy-Item "D:\mydir\file.txt" -Destination "C:\remote_dir\" -ToSession $Session

```

***

#### Copy directory to remote computer

```
  $Session = New-PSSession -ComputerName "Server" -Credential "Contoso\User"
  
  Copy-Item "D:\mydir\" -Destination "C:\remote_dir\" -ToSession $Session

```

***
***
