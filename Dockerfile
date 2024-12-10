FROM mongo:6.0.19

COPY backup.sh /opt/backup.sh
COPY prune.sh /opt/prune.sh
