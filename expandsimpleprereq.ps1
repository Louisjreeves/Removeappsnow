#$cred = Get-Credential

Write-host "you may have the application in your downloads folder already. If you have downloaded today choose 2"
Write-host "If its been a few Days you need a FRESH COPY. in this case choose 1"
$ans1 = Read-host "Would you like to download the new copy? 1=Proceed online 2=I have the file "

If ($ans1 -ieq "1") { 

$MyTemp=(Get-Item $env:temp).fullname
$mydownloads= (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path
$myuser= $env:USERNAME
 
try
 {
   $response = Invoke-WebRequest -Uri https://github.com/Louisjreeves/Removeappsnow/raw/main/Removeappsnow.zip -OutFile $Mydownloads\Removeappsnow.zip

   
   $StatusCode = $Response.StatusCode
 } catch 
 {
    $StatusCode = $_.Exception.Response.StatusCode.value__
  }
  }
  
    Expand-Archive -Path $mydownloads\Removeappsnow.zip -DestinationPath $mydownloads\Removeappsnow -Force
 
 
 $activedirectory= "C:\Users\$myuser\downloads\Removeappsnow"
 cd c:\
 set-location $activedirectory
  .\Removeappsnow.ps1

 
 #OLD --------------------LEGACY---------------------------
 # $fullpath= "C:\Users\*\AppData\Local\Temp\ProSupportNTWKTtest.zip"

#$GetFile = $mytemp # diag-v-master.zip
#$getDIagVFol = (split-path $fullpath -Leaf).Split(".")[0]  #diag-v-master
#$getDiagpath = (split-path $fullpath -parent)  #C:\Users\Administrator.Corp\Desktop

#$md = "$env:ProgramFiles\WindowsPowerShell\Modules"
#$final= "c:\ProgramFiles\WindowsPowerShell\Modules\Diag-V-master\src\"
#$final2= "c:\Program Files\WindowsPowerShell\Modules\Diag-V-master\src\diag-v"
#$extractedDiag= "Diag-v-master"
#$finalFile= "diag-V"
#Expand-Archive -Path $getdiagpath\$getDIagVFol.zip -DestinationPath $md -Force
#cp -Recurse $getfile $md -Force -ErrorAction Stop
#cp -Recurse $final2 $md -Force -ErrorAction stop
#Import-module -Verbose $md\$finalfile -Force
#start-sleep 5
 
 #OLD --------------------LEGACY---------------------------
 # $fullpath= "C:\Users\*\AppData\Local\Temp\ProSupportNTWKTtest.zip"

#$GetFile = $mytemp # diag-v-master.zip
#$getDIagVFol = (split-path $fullpath -Leaf).Split(".")[0]  #diag-v-master
#$getDiagpath = (split-path $fullpath -parent)  #C:\Users\Administrator.Corp\Desktop

#$md = "$env:ProgramFiles\WindowsPowerShell\Modules"
#$final= "c:\ProgramFiles\WindowsPowerShell\Modules\Diag-V-master\src\"
#$final2= "c:\Program Files\WindowsPowerShell\Modules\Diag-V-master\src\diag-v"
#$extractedDiag= "Diag-v-master"
#$finalFile= "diag-V"
#Expand-Archive -Path $getdiagpath\$getDIagVFol.zip -DestinationPath $md -Force
#cp -Recurse $getfile $md -Force -ErrorAction Stop
#cp -Recurse $final2 $md -Force -ErrorAction stop
#Import-module -Verbose $md\$finalfile -Force
#start-sleep 5