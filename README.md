# LoggingWithoutTheBulls61t

This repository is made to be a one stop shop for the security community. The goal is not to fill your SIEMs with junk but to easily detect adversaries and respond.

Don't have any logging enabled?  
You can start enabling logging using the order below:  
1.Servers  
2.Security devices  
3.Network devices  
4.Server applications  
5.Databases  
6.Applications  
7.Desktops  

While all these logs can't be sent to your log collector because of the volume, you should still enable them on the endpoints for incident response and manual threat hunting, remember that just because you are generating these logs you don't need to collect them.  


### DesktopLogCollection
When a SOC (Security Operation Center) decides to collect the logs in a central location they encounter a big problem, and that is volume. This prompts the SOC not to collect desktop logs.  
But the reality is that users are adversaries first target using techniques like phishing, and then moving towards your crown jewels.  
This means that if we have detection over our endpoints we may be able to detect adversaries early and reduce the cost of compromise.  
If you now suggest that we have to collect logs from our desktops you will be laughed out of the SOC. This means we require a plan and strategy to successfully implement desktop log collection.  
The approach of collecting everything will simply never work, this mindset needs to be changed. It is important to mention that even if you think you are collecting “everything” that is never the case, there are hundreds of channels, text files, debug, and analytical logs that no one is collecting.  
The approach to desktop logging must be dynamic and targeted, not all desktops are created equally. Admin-level desktops should have more logging than guest-level desktops. Compliance will demand a different set of requirements.  
Log collection should not be all or nothing, as an exercise on Fridays you should sift through the logs that you are collecting from all your endpoints and find logs that are irrelevant to security and stop collecting them. This will create more space that allows you to collect logs that are useful or logs that you still don’t know are useful or not.  
One quick win for removing unnecessary logs is to look for the most frequently seen logs and try to remove those.  
Remember that if a log doesn’t need to be collected, you can still generate it, it just doesn’t need to be sent to your log collector. A simple example is filtering out an event ID.  
You can also create more complex filters but be careful this is not recommended.  
The same filters can be done on the log collector as well.  
Now that you have filtered all the noise you can start collecting desktop logs.  
You can start with targeted logs that are useful and aren’t heavily being generated in your environment, this can be something like script block logging.  
The process of collecting new logs should be continuous.  


