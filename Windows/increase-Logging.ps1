# No guarantees, no warranties, and no right reserved.
#
# This script is intended to be a simple way for cyber security engineers to enable tactical
# logging on their windows endpoints.
#
# I avesta have only gathered all the open source information and have grouped it all into one script.
#
# You only need to run the script and enjoy all the logs.
# 
#
# 
#
#
#
#
#
#
#
#
#
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















