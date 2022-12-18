
***

## Looping and flow control 

***

**Comparison**

```
-eq -ne -ge gt -in -notin -lt -le -like -notlike -match -notmatch -contains -notcontains -is -isnot

```

**Logical** 

```
-and -or -xor -not

```

***

**Logical operators**

```
(dir).Count -ge 4

True
-----------------------------------------------------------
# Regex match
"Four score and seven years" -match "Four*"

True
-----------------------------------------------------------
($true) -and ($true)

True

```

***

**Conditional statements**

```
$temp = 50 

if($temp -gt 40) {
    "It's fine."
} elseif($temp -in 33..40) {
    "Somewhat cold."
} else {
    "Too cold."
}

It's fine.
-----------------------------------------------------------
$temp = 18 

switch($temp) {
    {$_ -gt 20}     {"Not so bad."; break}
    default         {"Too cold."}
}

Too cold.

```

***

**Looping** 

```
for($i = 1; $i -le 3; $i++){
    "Number: " + $i    
}

Number: 1
Number: 2
Number: 3
-----------------------------------------------------------
$resp = ""
while($resp -ne "q"){
    $resp = Read-Host "Press 'q' to quit"
}

```

***

**Add a pause or delay**

```
# Pause 5 seconds
Start-Sleep 5 
Write-Host "I'm up now."

I'm up now.

```


***
***
