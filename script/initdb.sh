#!/bin/bash

set -e

until mysql -u admin -padmin -h mysql basement -e "show tables"; do
  echo "mysql is not ready"
  sleep 2
done

echo "mysql is ready to serve"
echo "prepare data"
mysql -u admin -padmin -h mysql basement < /app/script/basic_data.sql
mysql -u admin -padmin -h mysql basement < /app/script/application_test.sql
