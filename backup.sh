#!/bin/bash

set -e
set -x
set -o pipefail

TARGET_DIR="/backup"
TIMESTAMP=$(date +%FT%H:%M:%S)
DATABASE_NAME=$1

if [ -z "${DATABASE_NAME}" ]; then
  echo "Database name is required"
  exit 1
fi

mkdir -p "${TARGET_DIR}/${DATABASE_NAME}"

BACKUP_TARGET="${TARGET_DIR}/${DATABASE_NAME}/${TIMESTAMP}"

mongodump --uri "mongodb://${MONGO_INITDB_ROOT_USERNAME}:${MONGO_INITDB_ROOT_PASSWORD}@localhost:27017/${DATABASE_NAME}?ssl=false&authSource=admin" --out "${BACKUP_TARGET}"
