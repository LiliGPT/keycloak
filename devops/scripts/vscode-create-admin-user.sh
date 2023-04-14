#!/bin/bash

setupCommand() {
  local HERE=$(cd $(dirname "$0"); pwd)
  source "$HERE/_lib.sh"
  setupEnvironment
}

main() {
  # start the container
  "$PROJECT_ROOT/devops/scripts/run.sh"
  # wait for keycloak to start
  echo "Waiting for keycloak..."
  sleep 5
  # create admin user
  "$PROJECT_ROOT/devops/scripts/create-admin-user.sh"
  # stop the container
  echo "Stopping keycloak..."
  "$PROJECT_ROOT/devops/scripts/stop.sh"
}

( setupCommand; main )
