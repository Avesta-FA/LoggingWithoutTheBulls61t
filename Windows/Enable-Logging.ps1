#Author: Avesta Fahimipour  
#No guarantees, no warranties, and no rights reserved.  
#This script is intended to be a simple way for cyber security practitioners to enable tactical logging on their windows endpoints.  
#You only need to run the script and enjoy all the logs.  
# 
#
############################
#
#
#	Installing Sysmon
#
#
############################
# You will need to download sysmon and add it inside the same folder.
# You will also need to add SwiftOnSecurity sysmon config file.


New-Item -ItemType Directory -Path c:\sysmon -ErrorAction Stop
Copy-Item -Path ".\Sysmon64.exe" -Destination c:\sysmon -ErrorAction Stop
Copy-Item -Path ".\sysmonconfig-export.xml" -Destination c:\sysmon -ErrorAction Stop


.\sysmon\Sysmon64.exe /accepteula -i c:\sysmon\sysmonconfig-export.xml

net start Sysmon64 



############################
#
#
#	Enabling Script block logging
#
#
############################
#For more powershell logging you can also add transcript logging and module logging (Module Logging is VERY NOISY).  
#The GPO location is at Administrative Templates > Windows Components > Windows Powershell  
reg.exe add "HKLM\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging" /v EnableScriptBlockLogging  /t REG_DWORD /d 1 /f 1>$null



############################
#
#
#	Adding Advanced Audit policies
#
#
############################





auditpol /set /subcategory:"Filtering Platform Policy Change" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"MPSSVC Rule-Level Policy Change" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"File System" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"Detailed File Share" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"Filtering Platform Connection" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"Registry" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"File Share" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"Certification Services" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"SAM" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"Other Logon/Logoff Events" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"Credential Validation" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"Other Account Management Events" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"User Account Management" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"Plug and Play Events" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"Directory Service Access" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"Directory Service Changes" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"Account Lockout" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"Group Membership" /Success:Enable 

auditpol /set /subcategory:"Removable Storage" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"Authentication Policy Change" /Success:Enable 

auditpol /set /subcategory:"Authorization Policy Change" /Success:Enable 

auditpol /set /subcategory:"Sensitive Privilege Use" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"IPSec Driver" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"Security State Change" /Success:Enable 

auditpol /set /subcategory:"Other System Events" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"Security System Extension" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"System Integrity" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"computer account management" /Success:Enable 

auditpol /set /subcategory:"audit policy change" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"security group management" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"logoff" /Success:Enable 

auditpol /set /subcategory:"logon" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"security group management" /Success:Enable /Failure:Enable

auditpol /set /subcategory:"Special Logon" /Success:Enable 

auditpol /set /subcategory:"Process Creation" /Success:Enable 



#The key below enables command line auditing for process creation.  
#The gpo location is Computer Configuration > Administrative Templates > System > Audit Process Creation.  
reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Audit" /v ProcessCreationIncludeCmdLine_Enabled /t REG_DWORD /d 1 /f 1>$null













