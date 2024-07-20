#!/bin/bash

sleep 30

#/bin/systemctl restart sendmail.service
#/sbin/service sendmail restart

## Variable
IP=`hostname -I`
EIP=`curl http://ifconfig.me/ip`
HOSTNAME=`hostname -f`
OS=`lsb_release -d | sed 's/.*://'`
TOR=`cat /var/lib/tor/ssh/hostname`

## Mail Text
date > /tmp/email.txt
echo >> /tmp/email.txt
echo "$HOSTNAME a (re)démarré et est en ligne ." > /tmp/email.txt
echo "Version OS : $OS " >> /tmp/email.txt
echo "Son IP Local est : $IP " >> /tmp/email.txt
echo "Son IP Public est : $EIP " >> /tmp/email.txt
echo >> /tmp/email.txt
echo "Joignale via TOR sur : $TOR " >> /tmp/email.txt
echo >> /tmp/email.txt
mail -s "$HOSTNAME en ligne" -r restart@server.domain.tld myotheremail@myotherdomain.tld < /tmp/email.txt
#mail -s "$HOSTNAME online" -r restart@server.domain.tld myotheremail@myotherdomain.tld < /root/email.txt
#mail -s "$HOSTNAME online" -r restart@server.domain.tld mycellphone@txt.carrier.tld < /root/email.txt

#cat /root/email.txt
rm -rf /tmp/email.txt

#/bin/systemctl restart sendmail.service
#/sbin/service sendmail restart
exit 0
