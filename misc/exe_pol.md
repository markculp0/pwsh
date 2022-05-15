
***

## Execution Policy

***

#### Enable Scripting through Group Policy Editor

***

1. Open Run Command/Console ( Win + R )
2. gpedit. msc (Group Policy Editor)
3. Browse to Local Computer Policy -> Computer Configuration -> Administrative Templates -> Windows Components -> Windows Powershell.
4. Enable "Turn on Script Execution"
5. Set the policy as needed. "Allow all scripts".

***

#### Enable Scripting through Execution Policy

***

```
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser


```


***
***
