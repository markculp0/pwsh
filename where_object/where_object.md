
***

## Where-Object (where)

***

#### Get a specific object

```
  Get-ChildItem 
    | Where-Object Name -eq "where_object.md"

```

***

#### Get object like a specific value *(-CLike = case insensitive)*

```
  Get-ChildItem 
    | Where-Object Name -CLike "where_object.*"

```

***

#### Get object like a specific value (FilterScript)

```
  Get-ChildItem 
    | Where-Object {$_.Name -CLike "where*"}

```

***
***
