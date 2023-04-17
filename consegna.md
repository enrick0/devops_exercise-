## Excercise 1
Write a python or bash script that takes three parameters, two strings and a directory name, 
and substitutes any occurrence of the first string with the second string for any file in the directory, recursively


## Excercise 2
Write a python or bash script that counts the number of script files in a directory subdividing it by the shebang interpreter.

An example output in macOS is:
countexec /usr/bin
81 #!/usr/bin/perl
52 #!/usr/bin/perl5.18
47 #!/bin/sh
44 #!/usr/bin/perl5.28
22 #!/usr/sbin/dtrace -s
...


## Excercise 3
Write a cron string that **every sunday night** create a backup of /home/user folder and send it to a remote server which can be reached using ssh with user@192.168.1.100 (consider private and public key already correctly installed and configured)


## Excercise 4
Quick! A new WordPress site must go live!
You have these instructions: 
- Automate the creation of the infrastructure and the setup of the application
- It's based on the last version of WordPress (it will be more useful if we can parameterize the version) 
- You can choose Apache, Nginx, or whatever you want. 
- Once deployed, the application should be:  secure , fast , fault-tolerant , adaptive to average load 
- To provision the infrastructure, choose one between CloudFormation and Terraform (CloudFormation, Terraform) 
- Optional: Create a CI/CD pipeline to deploy WordPress 
- Write a readme with an architecture diagram and all the required instructions to install and try your solution 