
***

## Bit shifting and Byte arrays

***
  
```
[byte[]] $bytes = 1..10 
$bytes[1]

2
----------------------------------------------------------------
$bytes| Format-Hex

Offset Bytes                                           
00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F
------ -----------------------------------------------
  0000000000000000 01 02 03 04 05 06 07 08 09 0A          
----------------------------------------------------------------
[Byte[]] $hex = 0x0a,0x01
$hex[0]

10
----------------------------------------------------------------
# Shift left
[Byte[]] $hex = 0x0a,0x01
$hex[1] -shl 2

4
----------------------------------------------------------------
$hx = 0x01
$hx = $hx -shl 8

"Dec is " + $hx 

Dec is 256
----------------------------------------------------------------
"Hex is {0:X4}" -f $hx[0]

Hex is 0100
----------------------------------------------------------------
$hx[0].GetType().ToString()

System.Int32

```


***
***
  
