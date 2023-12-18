#!/bin/bash
#Pentester Side
nc -vnlp 53&
sleep 2
nc -vnlp 80&
sleep 2
nc -vnlp 443&
echo "Open Ports"
netstat -nlpt
