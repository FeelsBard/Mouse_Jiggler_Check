# Mouse Jiggler Check
## Check your domain for computers running automated mouse movement software.
[![made-with-powershell](https://img.shields.io/badge/PowerShell-1f425f?logo=Powershell)](https://microsoft.com/PowerShell)

### **WARNING** I do NOT take responsiblity for these scripts, their output, or the actions taken against any users with the data provided. Use at your own risk!

# Versions
## Scan all computers on the domain:
This script will compile a list of domain added computers which are enabled from your DC. A list of known automated mouse movement software is compared against the list of current running tasks. If a task is detected an email is sent to a specified address to alert them. This is great for the task being run periodically during the day on a schedule. This is a great way to alert IT teams. You will be required to go into the script and edit the fields for To, From, and SMTP server.
## Scan a targeted computer on the domain:
This script will scan a specific computer for violations. If a violation is found a message box stating which software is presented. If no violation is found you will get a popup stating no violations found. The target computer is specified in the powershell window after the command is run.

## FAQ
### I'm getting access denied errors. Fix it!
You may need to enable PSRemoting on your domain computers to allow the commands to invoke properly. For help with this.. click [Here](https://bfy.tw/QjKv)

### I want to use the full scan but I want to use a webhook to send alerts to Teams or Slack or pop up alerts like the targeted script. What do?
I tossed these together and those have not been implimented features yet. I will try to add those options shortly as I know different IT teams have different alerting setups.
