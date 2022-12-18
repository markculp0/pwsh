
***

## .Net Objects

***

**Call a Static Method**

```
[Classname]::MethodName(parameter list)
[System.Diagnostics.Process]::GetProcessById(0)

 NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
 ------    -----      -----     ------      --  -- -----------
      0     0.06       0.01       0.00       0   0 Idle

[System.DateTime]::Now


```

***


**List a Static Method's constructors**
```
[System.Diagnostics.Process]::GetProcessById

OverloadDefinitions
-------------------
static System.Diagnostics.Process GetProcessById(int processId, string machineName)
static System.Diagnostics.Process GetProcessById(int processId)

```

***

**Access a Static Property**

```
[System.Diagnostics.Process].Assembly

GAC    Version        Location
---    -------        --------
False  v4.0.30319     C:\Program Files\PowerShell\7\System.Diagnostics.Process.dll

[System.Management.Automation.PSCredential].Assembly 

GAC    Version        Location
---    -------        --------
False  v4.0.30319     C:\Program Files\PowerShell\7\System.Management.Automation.dll

```

***

**Create an instance of a .Net object**

```
$gen = New-Object System.Random 
$gen.NextDouble()

0.988195330473978
-----------------------------------
$gen.GetType().ToString() 

System.Random
-----------------------------------
$hi = [System.String]::new("HI")
$hi 

HI
-----------------------------------
$str = New-Object System.String "hi"
$str.Length

2

```

***

**Create a Generic Object** (int, string)

```
$num = New-Object System.Collections.ObjectModel.Collection[int]

$num.Add(1) 
$num.Add(2)
$num 

1
2

```

***

**Create multiparameter Generic Object**

```
$map = New-Object "System.Collections.Generic.Dictionary[Int,String]"
$map.Add(1,"Bill");  

$map.Values


Bill


```

***

**Get Instance Members of an Object**

```
$myObj = "My Object"

# Same as $myObj | gm
Get-Member -InputObject $myObj


Name                 MemberType            Definition
----                 ----------            ----------
Clone                Method                System.Object Clone(), System.Object ICloneable.Clone()
...

```

***

**Get Static Instance Members of an Object**

```
Get-Member -Static -InputObject $myObj



   TypeName: System.String

Name               MemberType Definition
----               ---------- ----------
Compare            Method     static int Compare(string strA, string strB), static int Compare(st…
CompareOrdinal     Method     static int CompareOrdinal(string strA, string strB), static int Com…
Concat             Method     static string Concat(System.Object arg0), static string Concat(System…


```

***

**Find the type of an object**

```
$myObj.GetType().ToString()


System.String

```

***

* Now look up type at https://docs.microsoft.com/dotnet

***

**Get properties and methods of the type**

```
[System.String] | gm 


   TypeName: System.String

Name               MemberType Definition
----               ---------- ----------
Compare            Method     static int Compare(string strA, string strB), static int Comp… 
CompareOrdinal     Method     static int CompareOrdinal(string strA, string strB), static i… 
Concat             Method     static string Concat(System.Object arg0), static …


# Just get properties
[System.String] | gm  -MemberType Property 

# just get methods 
[System.String] | gm  -MemberType Method


```

***

**Get members and properties of the collection class itself (,)** 

```

# Don't want each item in the collection
$files = gci 
,$files | gm 

   TypeName: System.Object[]

Name           MemberType            Definition
----           ----------            ----------
Add            Method                int IList.Add(System.Object value)
Address        Method                System.Object&, System.Private.CoreLib, Version=7.0.0.… 

```

***

**Add custom methods and properties**

```
$ob = New-Object System.Object
$ob | Add-Member NickName "Obie"
$ob | gm

Name        MemberType   Definition
----        ----------   ----------
Equals      Method       bool Equals(System.Object obj)
GetHashCode Method       int GetHashCode()
GetType     Method       type GetType()
ToString    Method       string ToString()
NickName    NoteProperty string NickName=Obie

---
$ob.NickName

Obie

```

***

**Create and initialize a custom object** 

```
$ob = [PSCustomObject]@{
    'Name' = 'Bub';
    'NickName' = 'Bubba';
}

gm -InputObject $ob 


Name        MemberType   Definition
----        ----------   ----------
Equals      Method       bool Equals(System.Object obj)
GetHashCode Method       int GetHashCode()
GetType     Method       type GetType()
ToString    Method       string ToString()
Name        NoteProperty string Name=Bub
NickName    NoteProperty string NickName=Bubba

```

***
***
