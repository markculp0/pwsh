
***

## Get-Help (man, help, -?)

***

#### Get help

```
  alias

  Get-Help cmd
  
  Get-Help *
  
  Get-Help cmd -Examples (-e)
  
  Get-Help cmd | Out-Host -ShowWindow (-s)

```

***

#### Get verb 

```
  # Get approved verb list
  Get-Verb
  
  # Verbs starting with 'un'
  Get-Verb un*
  
  # Verbs from security group (-g sec)
  Get-Verb -Group Security

  # Verbs from common group  
  Get-Verb -Group Common

```

***

### Get a command or noun (gcm)

```
  # All commands on local computer ($env:path)
  Get-Command *
  
  # All nouns associated with a verb (-c cmdlet)
  Get-Command Get-* -CommandType Cmdlet 

```

*** 

#### Get an object's properties and methods

```
  # Members of process objects
  Get-Service | Get-Member
  
  # Members for an array 
  $array | Get-Member
  
  # Array method GetType()
  $array.GetType().Name

```

***

#### Update help 

```
  Update-Help

```

***
***
