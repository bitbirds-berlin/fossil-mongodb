FROM mongo:5.0.28

COPY backup.sh /opt/backup.sh
COPY prune.sh /opt/prune.sh
