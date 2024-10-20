FROM mongo:5.0.29

COPY backup.sh /opt/backup.sh
COPY prune.sh /opt/prune.sh
