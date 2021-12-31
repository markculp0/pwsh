
***

## Profiles prompts

***

#### $PSHOME

```

  C:\Program Files\PowerShell\7

```

***

#### profile.ps1

```

  function prompt 
  {
    "PS: [$env:COMPUTERNAME
    $host.UI.RawUI.WindowTitle = "$(Get-Location)"
  }

```

***

#### Execute program

```
  & 'C:\Program Files\Notepad++\notepad++.exe'
  & 'C:\Program Files\Google\Chrome\Application\chrome.exe'
  & 'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe'

```

***

#### Set-Alias for program

```
  Set-Alias np 'C:\Program Files\Notepad++\notepad++.exe'
  Set-Alias crm 'C:\Program Files\Google\Chrome\Application\chrome.exe'
  Set-Alias edg 'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe'
  
```  

***

#### Scripts

* [profile.ps1](profile.ps1)

***

***
***
