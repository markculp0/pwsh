
# Cake script

$nm = Read-Host("Name please")

Write-Host("Welcome, " + $nm + ".")

$ck = Read-Host("Do you like cake? (y/n)")

$good_ans = @("y","n")

while ($ck -notin $good_ans) {
  $ck = Read-Host("Answer 'y' or 'n'")
}

if ($ck -eq "y") {
  Write-Host("Me too, cake is great.")
} elseif ($ck -eq "n") {
  Write-Host("Wow, that is sad.")
}


