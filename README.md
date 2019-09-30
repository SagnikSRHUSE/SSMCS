# SSMCS
Systemd Service Monitoring Cron Script

Monitors the service that you want to monitor, every minute by default.

## Install Instructions

- `wget https://github.com/SagnikSRHUSE/SSMCS/blob/master/setup.sh -O ./setup.sh && chmod +x ./setup.sh`
- Then run `./setup.sh <servicename>`. Replace <servicename> with the service that you want to monitor, for example `./setup.sh apache2.service`
