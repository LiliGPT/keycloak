#!/bin/bash

setupCommand() {
  local HERE=$(cd $(dirname "$0"); pwd)
  source "$HERE/_lib.sh"
  setupEnvironment
}

main() {
  # start the container
  "$PROJECT_ROOT/devops/scripts/run.sh"
  # show logs
  "$PROJECT_ROOT/devops/scripts/logs.sh"
  # stop the container (pressing Ctrl/Cmd+C)
  "$PROJECT_ROOT/devops/scripts/stop.sh"
}

( setupCommand; main )
