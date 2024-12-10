FROM mongo:8.0.4

COPY backup.sh /opt/backup.sh
COPY prune.sh /opt/prune.sh
