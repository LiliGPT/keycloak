#!/bin/bash

setupCommand() {
  local HERE=$(cd $(dirname "$0"); pwd)
  source "$HERE/_lib.sh"
  setupEnvironment
}

main() {
  # restart keycloak
  docker compose -f "$DOCKER_COMPOSE_FILE" \
    up "$MAIN_CONTAINER_SERVICE_NAME" restart "$MAIN_CONTAINER_SERVICE_NAME" -d
}

setupCommand
main
