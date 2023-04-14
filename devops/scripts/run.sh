#!/bin/bash

setupCommand() {
  local HERE=$(cd $(dirname "$0"); pwd)
  source "$HERE/_lib.sh"
  setupEnvironment
}

main() {
  # start database
  docker compose -f "$DOCKER_COMPOSE_FILE" up db -d
  # start keycloak
  docker compose -f "$DOCKER_COMPOSE_FILE" up "$MAIN_CONTAINER_SERVICE_NAME" --force-recreate -d
}

setupCommand
main
