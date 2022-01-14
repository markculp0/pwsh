
***

## Out-GridView (ogv)

***

#### Display command ouput in GUI

```
  # List process output in GUI view 
  Get-Process | Out-Gridview
  
  # Shortcut 
  ps | ogv
  
```  

***

#### Filter files with -PassThru

```
  # Filter then send to text file
  Get-ChildItem | Out-GridView -PassThru | Set-Content file.txt
  
  # Shortcut
  ls | ogv -p | Set-Content file.txt
  
```

***

#### See also 

* [Set-Content](..\set_content\set_content.html)


***
***

