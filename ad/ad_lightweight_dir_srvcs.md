
***

## Active Directory Lightweight Directory Services 

***

```
  LDAP port 389
  SSL port 636
  
  App Directory Partition:
  DC=Fabrikam,DC=com
  
  File Locations:
  Data files:           C:\Program Files\Microsoft ADAM\Test\data
  Data recovery files:  C:\Program Files\Microsoft ADAM\Test\data
  
  Network Service Account: AD LDS has permissions of default 
                            Windows service account
                   ( This is a system service account so can not 
                      replicate data on other computers.)
                      
  AD LDS Administrators: 
            DOMAIN\user
          
```       

***

#### Install a unique instance of AD LDS

```
  
  Instance name: Test
  Computers will connect to this instance of AD LDS using the following ports:
    LDAP port: 389
    SSL port: 636
  
  AD LDS replication will use Negotiate authentication.
  
  Store AD LDS data files in the following location:
  C:\Program Files\Microsoft ADAM\Test\data
  
  Store AD LDS log files in the following location:
  C:\Program Files\Microsoft ADAM\Test\data
  
  Run AD LDS using the following account:
  NT AUTHORITY\NetworkService
  
  Set up the following account to administer AD LDS:
    DOMAIN\user
  
  Create the following application directory partition:
  
  DC=Fabrikam,DC=com 
  
  Import these LDIF files:
  
  MS-AdamSyncMetadata.LDF
  MS-ADLDS-DisplaySpecifiers.LDF
  MS-InetOrgPerson.LDF
  MS-MembershipTransitive.LDF
  MS-ParentDistname.LDF
  MS-ReplValMetadataExt.LDF
  MS-SecretAttributeCARs.LDF
  MS-SetOwnerBypassQuotaCARs.LDF
  MS-User.LDF
  MS-UserProxy.LDF
  MS-UserProxyFull.LDF

```

*** 
                      
#### Test new instance 

```
  ps:> [adsi] "LDAP://localhost:389/dc=Fabrikam,dc=COM"
  
  distinguishedName : {DC=Fabrikam,DC=com}
  Path              : LDAP://localhost:389/dc=Fabrikam,dc=COM

```

***
***
