
***

## Strings

***

**Single quotes are non-expanding literal strings**

```
$mystr = 'Some pwsh chars: $, `, " and {}'
$mystr

Some pwsh chars: $, `, " and {}

```
***

**Double quotes support variable expansion**

```
$var = "Sid"
$mystr = "Hello $var, hope all is well.`nSincerely,`nBub"
$mystr

Hello Sid, hope all is well.
Sincerely,
Bub

```

***

**Escape sequences with backticks**

```
$str = "Name"
$str2 = "Age"
$str3 = $str + "`t" + $str2 + "`n"
$str4 = "$('-' * $str.Length)" + "`t" + 
    "$('-' * $str2.Length)" + "`n"
$str5 = $str3 + $str4 
$str5 

Name    Age
----    ---

```

***

**Concatenate strings with +**

```
$a = "I am a Viking "
$b = "of some note. "
$c = "`nNewt's my name "
$d = "and here I float."
$str = $a + $b + $c + $d 
$str 

I am a Viking of some note. 
Newt's my name and here I float.

```

***

**Multiline strings are contained within At symbols (@)**

```
$str = @"
Toward a wisdom, 
Beyond the shelf.
Toward a dream, 
that dreams itself.
"@
$str 

Toward a wisdom, 
Beyond the shelf.
Toward a dream,
that dreams itself.

```


***

**Subexpressions are contained within $()**

```
$header = "My Important Header"
$mystr = "$header`n$('-' * $header.Length)"
$mystr

My Important Header
-------------------

```

***

**Formatting strings**

```
$num1 = 10
$num2 = 25
"{0} divided by {1} is {2}" -f $num1, $num2, ($num1 / $num2)

10 divided by 25 is 0.4

```

***

**Standard format strings**

```
{0,8:C} = currency | {0,8:X} = hex | {0,8:F2} = fixed decimal point
{0,8:D4} = decimal | {0,8:N3} = number 
--------------------------------------------------------------------
# Fixed point
$n = 100.1033
"{0,8:F2}" -f $n

100.10
--------------------------------------------------------------------
# Decimal
$n = 1100
"{0,8:D4}" -f $n

1100
--------------------------------------------------------------------
# Number
$n = 1mb
"{0,8:N3}" -f $n

1,048,576.000


```


***

**Specify column width**

```
$n1 = 300
$n2 = 44.5
"{0,8}`t{1,6}" -f "Quantity", "Price"
"$('-' * 8)`t" + "$('-' * 7)"
"{0,8}`t{1,7:C}" -f $n1, $n2

Quantity         Price
--------        -------
     300         $44.50

```

***

**Search a string**

```
# Match DOS-like wildcard
"Hey Bub" -like "Hey*"

True
-----------------------------
# Match regex
"Hey Bub" -match "^\S{3}\s.*"

True
-----------------------------
# Contains specifc string
"Hey Bub".Contains("Bu")

True
-----------------------------
# Find index of character
"Hey Bub".IndexOf("B")

4

```

***

**String output to file**

```
$txt = "Sad Dad"
$txt | Out-File dad.txt 
gc dad.txt 

Sad Dad

```

**Split a string**

```
$env:PSModulePath -split ';'

C:\Program Files\PowerShell\Modules
c:\program files\powershell\7\Modules
c:\Users\markc\.vscode\extensions\ms-vscode.powershell-2022.12.1\modules

```


***
***
