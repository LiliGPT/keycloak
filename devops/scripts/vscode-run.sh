#!/bin/bash

setupCommand() {
  local HERE=$(cd $(dirname "$0"); pwd)
  source "$HERE/_lib.sh"
  setupEnvironment
}

main() {
  # show logs
  docker logs --tail 100 "$MAIN_CONTAINER_NAME" -f
  "$PROJECT_ROOT/devops/scripts/stop.sh"
}

setupCommand
main
