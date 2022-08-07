#Author: Avesta Fahimipour 
#
#No guarantees, no warranties, and no rights reserved.
#
#
#
#It is good practice to increase the size of the event logs.
#
#
#
#
#

Limit-EventLog -LogName System -MaximumSize 20480KB
Limit-EventLog -LogName Security -MaximumSize 20480KB
Limit-EventLog -LogName Application -MaximumSize 20480KB


# Feel free to add more.















