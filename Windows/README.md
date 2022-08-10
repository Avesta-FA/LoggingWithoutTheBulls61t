Enable-Logging shows which log sources should be enabled.  
There are better ways of enabling those logs ( e.g GPO) rather than running the script.  




# Applications  
## DNS  
Assuming that you are not allowed to enable debug logging for DNS:  
For 2016+: you have access to DNS server channel and you can right click and show analytical logs under Microsoft-Windows-DNSServer (Don't forget to enable it)

For 2012R2:  
https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/dn800669(v=ws.11)




## IIS
You should use the W3C format for IIS logging.  
You can optionally enable the fields not selected even if they are being captured from other sources.
