#Author: Avesta Fahimipour 
#No guarantees, no warranties, and no rights reserved.
#It is good practice to increase the size of the event logs.
#
#
#
#
#
#
Limit-EventLog -LogName 'System' -MaximumSize 2GB
Limit-EventLog -LogName 'Security' -MaximumSize 2GB
Limit-EventLog -LogName 'Application' -MaximumSize 2GB
Limit-EventLog -LogName 'Windows PowerShell' -MaximumSize 2GB

# Feel free to add more.















