# Removeappsnow
remove or at least get removal strings from HCIOS
THis application has a simple menu 1-4 

    Write-Host "1: Press '1' THE BEST app to get removal strings for all apps."
    Write-Host "2: Press '2' To get MSI Installer removal command from registry."
    Write-Host "3: Press '3' To see and remove WMI metadata by name for removed driver or application."
    Write-Host "4: Press '4' To see and recent installs and there success or fail codes."
    Write-Host "Q: Press 'Q' to quit.



 ```Powershell
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;Invoke-Expression('$module="Removeappsnow";$repo="PowershellScripts"'+(new-object System.net.webclient).DownloadString('https://raw.githubusercontent.com/Louisjreeves/Removeappsnow/main/expandsimpleprereq.ps1'));Invoke-Removeappsnow
  ```




#1 Pulls every possible removal string plus all the info for wvery app installed including drivers. 

#2 Pulls the uninstall strings from the registry. IT also advised on follow up manual registry clean up. 

#3 Will allow you to find all the wmi in the product parition and remove by name. 

#4 will show you the recently added installer apps and language packs by looking at event logs. 

