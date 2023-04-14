#!/bin/bash

setupCommand() {
  local HERE=$(cd $(dirname "$0"); pwd)
  source "$HERE/_lib.sh"
  setupEnvironment
}

main() {
  # create admin user
  docker exec -it "$MAIN_CONTAINER_NAME" \
    /opt/jboss/keycloak/bin/add-user-keycloak.sh \
    -u admin \
    -p admin
}

( setupCommand; main )
