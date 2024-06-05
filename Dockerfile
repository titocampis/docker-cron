FROM ubuntu:22.04

# Enable verbose for shell,
#   update the system, install cron binary and python
RUN set -x && \
    apt-get update && \
    apt-get install && \
    apt-get clean

# Copy crontab file
COPY crontab .

# Give right permissions to crontab file
#   schedule as job for the cron daemon the especified on crontab file
#   create the file to print the logs from cron
RUN chmod 0755 crontab && \
    crontab crontab && \
    touch /var/log/cron.log

# Initiate the cron daemon and print in the output the content of /var/log/cron.log
CMD cron && tail -f /var/log/cron.log
