
***

## Get-Member

*** 

```
$ob = "Hi"
gm -InputObject $ob 

   TypeName: System.String

Name                 MemberType            Definition
----                 ----------            ----------
Clone                Method                System.Object Clone(), System.Object ICloneable.Clone()
CompareTo            Method                int CompareTo(System.Object value), int CompareTo(string strB), 
...

---
# Same 
Get-Member -InputObject $ob 
$ob | gm 

```
