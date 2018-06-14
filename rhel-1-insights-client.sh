#!/bin/bash

echo "$(tput setaf 2)Installation of Insights-Client!! :-) $(tput sgr 0)"

v=$(cat /etc/redhat-release)

echo $v

if [[ $v = "Red Hat Enterprise Linux Server release 7.5 (Maipo)" || $v = "" || $v = "" || ]]; then
   echo "$(tput setaf 1)Removing the redhat-access-insights :-( $(tput sgr 0)"
   yum remove redhat-access-insights
   echo "$(tput setaf 2)Now, Installing the Insights-client.... :-) $(tput sgr 0)"
   yum install insights-client
   echo "$(tput setaf 2)Registering this machine to Redhat Insights!! $(tput sgr 0)"
   insights-client --register
else
   echo "$(tput setaf 1)$(tput setab 7)This is not the RHEL 7.5 Maipo$(tput sgr 0)"
fi

echo "$(tput setaf 1)Removing the insights-client.sh file in /root directory$(tput sgr 0)"
rm -f /root/insights-client.sh


: '
(tput setaf 1)

1 = red
2 = green
3 = parrot green
4 = blue
5 = purple
6 = skyblue
7 = white
8 = black
'
