#!/bin/bash

set -e

wait_for_db() {
  echo "waiting for db"
  until [[ -f /share/db-ready ]]; do
	sleep 3
  done
  echo "db is ready to serve"

  echo "waiting for data"
  until [[ -f /share/data-ready ]]; do
	sleep 1
  done
  echo "data is ready"
}

wait_for_db
npm run test
