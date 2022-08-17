#!/bin/bash

wall "
#Architecture: $(uname -a)
#CPU physical: $(lscpu | awk ' NR==5 {print $2}')
#vCPU: $(lscpu | awk ' NR==9 {print $2}')
#Memory Usage: $(free -m | awk 'NR==2 {printf "%s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }')
#Disk Usage: $(df -h | awk 'NR==4 {printf "%.1f/%.1fGB (%s)\n", $3,$2,$5}')
#CPU Load: $(top -bn 1 | awk 'NR==3 {printf "%.2f%%\n", $4 + $2}')
#Last boot: $(who -b | awk ' {print $4, $5}')
#LVM use: $(/usr/sbin/lvm pvdisplay | grep Allocatable | awk '{print $2}')
#Connections TCP: $(ss -s | grep TCP | awk 'NR==2 {printf "%d ESTABLISHED\n", $3}')
#User log: $(who | wc -l)
#Network: IP $(hostname -I) $(ip a | grep link/ether | awk '{printf " (%s)\n", $2}')
#Sudo: $(journalctl _COMM=sudo | wc -l)"
