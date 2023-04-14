#!/bin/bash

setupCommand() {
  local HERE=$(cd $(dirname "$0"); pwd)
  source "$HERE/_lib.sh"
  setupEnvironment
}

main() {
  # uninstall
  docker compose -f "$DOCKER_COMPOSE_FILE" down -v --remove-orphans
}

setupCommand
main
