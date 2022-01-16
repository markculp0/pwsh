
***

## Out-File (>)

***

#### Write command output to a file

```
  # UTF16
  Get-ChildItem 
    | Out-File utf16_file.txt

  # If original file is ASCII
  Get-Content .\file.txt
    | Out-File ascii_file.txt -Encoding ASCII
    
  # Object to ASCII
  Get-ChildItem | Set-Content .\dir_list.txt

```

***

#### Shortcuts

```
  # UTF16
  gci > utf16_file.txt
  
  # ASCII to ASCII
  gc .\file.txt > ascii_file.txt -e ascii
  
  # Append
  gc .\file.txt >> ascii_file.txt -e ascii

```

***

#### See also

[Set-Content](..\set_content\set_content.html)

***
***
