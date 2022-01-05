
***

## Group-Object 

***

#### Create a Hashtable to access items in a list by a property name

```
  $h = Get-ChildItem | group -AsHash -AsString Length

  $h["134"]
  
  Mode                 LastWriteTime         Length Name
  ----                 -------------         ------ ----
  la---            1/5/2022  6:41 AM            134 group_object.md

```

***
***
