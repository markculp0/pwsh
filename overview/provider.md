
***

## Providers 

***

**Get-PSProvider**

```
Name                 Capabilities                                      Drives
----                 ------------                                      ------
Registry             ShouldProcess                                     {HKLM, HKCU}
Alias                ShouldProcess                                     {Alias}
Environment          ShouldProcess                                     {Env}
FileSystem           Filter, ShouldProcess, Credentials                {C, Temp}
Function             ShouldProcess                                     {Function}
Variable             ShouldProcess                                     {Variable}
Certificate          ShouldProcess                                     {Cert}
WSMan                Credentials                                       {WSMan}

```

*** 

**Filesystem**

```
gci c:\code

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d----          10/14/2022  8:02 PM                jumpc
d----          10/16/2022  9:01 AM                pointer
-a---          10/16/2022  9:26 AM         624106 index.html
-a---          10/16/2022  9:26 AM            174 index.md

```

***

**Registry**

```
Get-ChildItem "HKCU:\Control Panel\"


Name                           Property
----                           --------
Accessibility                  MessageDuration  : 5
                               MinimumHitRadius : 0
Appearance                     SchemeLangID : {9, 4}
                               NewCurrent   :
                               Current      :
                               
...

```

***

**Environment**

```
# Provider syntax
gci env:

Name                           Value
----                           -----
ALLUSERSPROFILE                C:\ProgramData
APPDATA                        C:\Users\markc\AppData\Roaming
ChocolateyInstall              C:\ProgramData\chocolatey
...

# Variable syntax
$env:computername

MY_GREAT_COMPUTER

# Provider syntax
gci env:computername

Name                           Value
----                           -----
COMPUTERNAME                   MY_GREAT_COMPUTER

```

***

**Certificate**

```
gci cert:

Location   : CurrentUser
StoreNames : {[Trust, True], [SmartCardRoot, True], [UserDS, True], [Root, True]…}

Location   : LocalMachine
StoreNames : {[Trust, True], [TestSignRoot, True], [SmartCardRoot, True], [TrustedAppRoot, True]…}

```

***

**Alias**

```
gci alias:  (alias)


CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Alias           ? -> Where-Object
Alias           % -> ForEach-Object
Alias           ac -> Add-Content
Alias           cat -> Get-Content
...

```


***
***
