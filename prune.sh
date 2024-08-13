#!/bin/bash

set -e
set -x
set -o pipefail

TARGET_DIR="/backup"
DATABASE_NAME=$1
BACKUP_TARGET="${TARGET_DIR}/${DATABASE_NAME}/"

if [ -z "${DATABASE_NAME}" ]; then
  echo "Database name is required"
  exit 1
fi

find ${BACKUP_TARGET} -maxdepth 1 -mindepth 1 -type d -mtime +31 -exec rm -f {} \;
