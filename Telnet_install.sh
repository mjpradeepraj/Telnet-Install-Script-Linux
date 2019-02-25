#!/bin/sh
sudo apt  install  update-inetd xinetd telnetd
touch /etc/xinetd.d/telnet
echo 'service telnet\n
{\n
disable = no\n
flags = REUSE\n
socket_type = stream\n
wait = no\n
user = root\n
server = /usr/sbin/in.telnetd\n
log_on_failure += USERID\n
}' > /etc/xinetd.d/telnet
sudo /etc/init.d/xinetd restart
echo '\ndone..! Installed Telnet Server..!'
