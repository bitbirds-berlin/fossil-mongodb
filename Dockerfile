FROM mongo:5.0.28

RUN mkdir /opt/
COPY backup.sh /opt/backup.sh
COPY prune.sh /opt/prune.sh
