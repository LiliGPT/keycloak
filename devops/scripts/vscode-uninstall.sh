#!/bin/bash

setupCommand() {
  local HERE=$(cd $(dirname "$0"); pwd)
  source "$HERE/_lib.sh"
  setupEnvironment
}

main() {
  # complete uninstall
  echo "Uninstalling..."
  "$PROJECT_ROOT/devops/scripts/uninstall.sh"
}

( setupCommand; main )
