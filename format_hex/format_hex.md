
***

## Format-Hex

***

#### Get hex of unicode file

***

```
  "Hello World" | Out-File unicode.txt -Encoding unicode
  
  Format-Hex unicode.txt

```

***

#### Get hex of ascii file

***

```
  "Hello World" | Out-File ascii.txt -Encoding ASCII
  
  Format-Hex ascii.txt

```

***

#### Get second line of unicode output 

***

```
  $output = Format-Hex unicode.txt
  $output[1].HexBytes

```

***
***
