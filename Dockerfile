FROM mongo:5.0.31

COPY backup.sh /opt/backup.sh
COPY prune.sh /opt/prune.sh
