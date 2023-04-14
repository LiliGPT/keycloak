#!/bin/bash

setupCommand() {
  local HERE=$(cd $(dirname "$0"); pwd)
  source "$HERE/_lib.sh"
  setupEnvironment
}

main() {
  "$PROJECT_ROOT/devops/scripts/run.sh"
  echo "Waiting for keycloak..."
  sleep 10
  echo "Creating admin user..."
  "$PROJECT_ROOT/devops/scripts/create-admin-user.sh"
  sleep 5
  echo "Stopping keycloak..."
  "$PROJECT_ROOT/devops/scripts/stop.sh"
}

( setupCommand; main )
