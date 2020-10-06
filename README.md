# QRadar Collectors HealthCheck
Extra layer of Collectors health checks. this script use the event collectors ips in order to ssh them and write
the result to a log file. afters logs are written I use QRadar build in logs generator script to create the relevant logs.
You guys need to catch them in QRadar Console UI and make event for those logs. After you did it, you can make an offense using those events.

for questions you can ping me on Linkedin:
https://www.linkedin.com/in/tamir-david-95068116a/
