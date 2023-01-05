#!/bin/bash

set -e

function green_deploy {
  ROLLOUT_STATUS_CMD_GREEN="kubectl rollout status deployment/green -n udacity"
  until $ROLLOUT_STATUS_CMD_GREEN || [ $ATTEMPTS -eq 60 ]; do
    $ROLLOUT_STATUS_CMD_GREEN
    sleep 1
  done

  echo "Green deployment is successful"
}

# Initialize green deployment
kubectl apply -f starter/apps/blue-green/green.yml

sleep 1

green_deploy