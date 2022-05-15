# Get user by email address

$emls = ${c:\temp\list.txt}

$domain = [adsi] "LDAP://localhost:389/dc=Fabrikam,dc=COM"
$searcher = [adsisearcher] $domain

foreach($eml in $emls){

  $searcher.Filter = '(&(objectClass=User)(userPrincipalName=' + $eml + '))'
  
  $userResult = $searcher.FindOne()
  
  $user = $userResult.GetDirectoryEntry() 
  
  $user.cn | Out-File .\output.txt -Append -Encoding ascii 

}

