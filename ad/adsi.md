
***

## Active Directory Service Interfaces *[adsi]*  

***

* [AD Lightweight Dir Srvcs](ad_lightweight_dir_srvcs.html)

***

#### Test an Active Directory instance 

***

```
  ps:> [adsi] "LDAP://localhost:389/dc=Fabrikam,dc=COM"
  
    distinguishedName : {DC=Fabrikam,DC=com}
    Path              : LDAP://localhost:389/dc=Fabrikam,dc=COM

```

***

#### Create an Organizational Unit

***

```
  $domain = [adsi] "LDAP://localhost:389/dc=Fabrikam,dc=COM"
  $salesOrg = $domain.Create("OrganizationalUnit", "OU=Sales")
  $salesOrg.Put("Description", "Sales Headquarters, SF")
  $salesOrg.Put("wwwHomePage", "http://fabrikam.com/sales")
  $salesOrg.SetInfo()
  

```

***

#### Create divisions within the Sales OU

***

```
  $sales = [adsi] "LDAP://localhost:389/ou=Sales,dc=Fabrikam,dc=COM"
  
  $east = $sales.Create("OrganizationalUnit","OU=East")
  $east.Put("wwwHomePage", "http://fabrikam.com/sales/east")
  $east.SetInfo()
  
  $west = $sales.Create("OrganizationalUnit","OU=West")
  $west.Put("wwwHomePage", "http://fabrikam.com/sales/west")
  $west.SetInfo()
  
  $north = $sales.Create("OrganizationalUnit","OU=North")
  $north.Put("wwwHomePage", "http://fabrikam.com/sales/north")
  $north.SetInfo()


```

***

#### Get properties of an OU 

***

```
  $orgUnit = [adsi] "LDAP://localhost:389/ou=West,ou=Sales,dc=Fabrikam,dc=COM"
  $orgUnit | Format-List *

    objectClass           : {top, organizationalUnit}
    ou                    : {West}
    distinguishedName     : {OU=West,OU=Sales,DC=Fabrikam,DC=com}
    instanceType          : {4}
    whenCreated           : {4/13/2022 2:02:47 AM}
    whenChanged           : {4/13/2022 2:02:47 AM}
    ...
    wWWHomePage           : {http://fabrikam.com/sales/west}
    name                  : {West}
    objectGUID            : {161 171 89 225 213 75 209 67 175 31 188 7 250 0 230 161}
    objectCategory        : {CN=Organizational-Unit,CN=Schema,CN=Configuration,CN={E0C20E76-1DD2-472C-8D33-043049304C89}}
    dSCorePropagationData : {1/1/1601 12:00:00 AM}
    ...
    Parent                : LDAP://localhost:389/ou=Sales,dc=Fabrikam,dc=COM
    Password              :
    Path                  : LDAP://localhost:389/ou=West,ou=Sales,dc=Fabrikam,dc=COM
    Properties            : {objectClass, ou,     distinguishedName, instanceType…}
    SchemaClassName       : organizationalUnit
    ...
    

```

***

#### Create a User Account

***

```
  $salesWest = [adsi] "LDAP://localhost:389/ou=West,ou=Sales,dc=Fabrikam,dc=COM"
  
  $user = $salesWest.Create("User", "CN=MyerKen")
  
  $user.Put("userPrincipalName", "Ken.Myer@fabrikam.com")
  
  $user.Put("displayName", "Ken Myer")
  
  $user.SetInfo()

```

***

#### Search for a User Account

***

```
  $domain = [adsi] "LDAP://localhost:389/dc=Fabrikam,dc=COM"

  $searcher = [adsisearcher] $domain
  
  $searcher.Filter = '(&(objectClass=User)(displayName=Ken Myer))'
  
  $userResult = $searcher.FindOne()
  
  $user = $userResult.GetDirectoryEntry()
  
  $user
  
  distinguishedName : {CN=MyerKen,OU=West,OU=Sales,DC=Fabrikam,DC=com}
  Path              : LDAP://localhost:389/CN=MyerKen,OU=West,OU=Sales,DC=Fabrikam,DC=com
  

```

***
***
