#!/bin/bash

REPO_URL=https://raw.githubusercontent.com/SagnikSRHUSE/SSMCS/master/

if [ ! -d /opt ]; then
  mkdir /opt
fi

if [ ! -f /opt/monitor.sh ]; then
  wget $REPO_URL/monitor.sh -O /opt/monitor.sh && chmod +x /opt/monitor.sh
else
  echo "/opt/monitor.sh already exists, are you sure you want to continue?"
  read RESPONSE
  if [[ "${RESPONSE}" =~ ^([nN][oO]|[nN])+$ ]]; then
      exit 0
  else
    rm -f /opt/monitor.sh &&  wget $REPO_URL/monitor.sh -O /opt/monitor.sh
fi

crontab -l | { cat; echo "* * * * * /opt/monitor.sh $1"; } | crontab -
