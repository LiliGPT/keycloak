#!/bin/bash

setupCommand() {
  local HERE=$(cd $(dirname "$0"); pwd)
  source "$HERE/_lib.sh"
  setupEnvironment
}

main() {
  # stop the container
  "$PROJECT_ROOT/devops/scripts/stop.sh"
}

( setupCommand; main )
