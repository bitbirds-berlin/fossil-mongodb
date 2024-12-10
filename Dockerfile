FROM mongo:5.0.30

COPY backup.sh /opt/backup.sh
COPY prune.sh /opt/prune.sh
