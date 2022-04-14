
***

## Get-ADComputer

***

* [Syntax](#syntax)
* [Get-ADUser]()
* [Get-ADDomain]()
* [Get-ADGroup]()
* [Get-ADForest]()

***

#### Get specific computer and show all properties

```
  Get-ADComputer -Identity "User01-SRV1" -Properties *
  
  AccountExpirationDate              : 
  accountExpires                     : 9223372036854775807
  AccountLockoutTime                 : 
  AccountNotDelegated                : False
  AllowReversiblePasswordEncryption  : False

```

***

#### Get all computers with a name starting with a particular string

***

* Format-Table -AutoSize

```
  Get-ADComputer -Filter 'Name -like "User01*"' -Properties IPv4Address 
    | FT Name,DNSHostName,IPv4Address -A
    
  name        dnshostname            ipv4address
  ----        -----------            -----------
  User01-SRV1 User01-SRV1.User01.com 10.194.99.181
  User01-SRV2 User01-SRV2.User01.com 10.194.100.3
    
```

***

#### Gets all computers changing their passwords in specific time frame

***

```
  $Date = [DateTime]::Today.AddDays(-90)
  Get-ADComputer -Filter 'PasswordLastSet -ge $Date' -Properties PasswordLastSet 
    | FT Name,PasswordLastSet
    
  Name                PasswordLastSet
  ----                ---------------
  USER01-SRV4         3/12/2009 6:40:37 PM
  USER01-SRV5         3/12/2009 7:05:45 PM

```

***

#### Get computer accounts in a specific location using an LDAPFilter

***

```
  Get-ADComputer -LDAPFilter "(name=*laptop*)" -SearchBase "CN=Computers,DC= User01,DC=com"
  
  name
  ----
  pattiful-laptop
  davidche-laptop


```

***

#### Get all computer accounts using a filter

***

```
  Get-ADComputer -Filter *

```

***

#### Get all computers with a name starting with Computer01 or Computer02

***

```
  Get-ADComputer -Filter 'Name -like "Computer01*" 
    -or Name -like "Computer02*"' 
    -Properties IPv4Address 
    | FT Name,DNSHostName,IPv4Address -A
  
  name            dnshostname                    ipv4address
  ----            -----------                    -----------
  Computer01-SRV1 Computer01-SRV1.Computer01.com 10.194.99.181
  Computer02-SRV2 Computer02-SRV2.Computer02.com 10.194.100.3

```

***

#### Get all computers with a name starting with a string AND password last set before 30 days

***

```
  $Date = [DateTime]::Today.AddDays(-30)
  Get-ADComputer -Filter 'Name -like "Computer01*" 
    -and PasswordLastSet -ge $Date'
    -Properties IPv4Address 
    | FT Name,DNSHostName,IPv4Address -A
  
  name        dnshostname            ipv4address
  ----        -----------            -----------
  Computer01-SRV1 Computer01-SRV1.Computer01.com 10.194.99.181

```

***

#### Syntax 

***

```
Get-ADComputer
   [-AuthType <ADAuthType>]
   [-Credential <PSCredential>]
   -Filter <String>
   [-Properties <String[]>]
   [-ResultPageSize <Int32>]
   [-ResultSetSize <Int32>]
   [-SearchBase <String>]
   [-SearchScope <ADSearchScope>]
   [-Server <String>]
   [<CommonParameters>]
   
Get-ADComputer
   [-AuthType <ADAuthType>]
   [-Credential <PSCredential>]
   [-Identity] <ADComputer>
   [-Partition <String>]
   [-Properties <String[]>]
   [-Server <String>]
   [<CommonParameters>]
   
Get-ADComputer
   [-AuthType <ADAuthType>]
   [-Credential <PSCredential>]
   -LDAPFilter <String>
   [-Properties <String[]>]
   [-ResultPageSize <Int32>]
   [-ResultSetSize <Int32>]
   [-SearchBase <String>]
   [-SearchScope <ADSearchScope>]
   [-Server <String>]
   [<CommonParameters>]
   
```

***
***



