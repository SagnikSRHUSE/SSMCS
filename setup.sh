if [ ! -d /opt ]; then
  mkdir /opt
fi

if [ ! -f /opt/monitor.sh ]; then
  wget https://raw.githubusercontent.com/SagnikSRHUSE/SSMCS/master/monitor.sh -O /opt/monitor.sh && chmod +x /opt/monitor.sh
else
  echo "/opt/monitor.sh already existsm, are you sure you want to continue?"
  read RESPONSE
  if [[ "${RESPONSE}" =~ ^([yY][eE][sS]|[yY])+$ ]]; then
      exit 0
  fi
fi

crontab -l | { cat; echo "* * * * * /opt/monitor.sh $1"; } | crontab -
