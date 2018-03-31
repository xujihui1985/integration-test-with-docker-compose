#!/bin/bash

set -e

echo "waiting for db to be ready"
sleep 10;

echo "mysql is ready to serve"
npm run test
