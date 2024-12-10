FROM mongo:7.0.15

COPY backup.sh /opt/backup.sh
COPY prune.sh /opt/prune.sh
