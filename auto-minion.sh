#!/bin/bash
  
#installing salt-minion service
curl -L https://bootstrap.saltstack.com -o install_salt.sh
sudo sh install_salt.sh

if ! grep -Fxq "master: 10.0.6.73" "/etc/salt/minion";
  then
    echo "master: 10.0.6.73" >> /etc/salt/minion
    sudo systemctl restart salt-minion
fi
