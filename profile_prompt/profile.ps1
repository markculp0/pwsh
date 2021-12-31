
function prompt 
{
  "PS: [$env:COMPUTERNAME]> "
  $host.UI.RawUI.WindowTitle = "$(Get-Location)"
}

# Set-Location
Set-Location C:\Users\bubba\OneDrive\Documents

# Set-Alias
Set-Alias fe 'C:\Windows\explorer.exe'
Set-Alias gb 'C:\Program Files\Git\git-bash.exe'
Set-Alias np 'C:\Program Files\Notepad++\notepad++.exe'
Set-Alias rs 'C:\Program Files\RStudio\bin\rstudio.exe'
Set-Alias mc 'C:\Program Files (x86)\Midnight Commander\mc.exe'
Set-Alias crm 'C:\Program Files\Google\Chrome\Application\chrome.exe'
Set-Alias edg 'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe'