#!/bin/bash

setupCommand() {
  local HERE=$(cd $(dirname "$0"); pwd)
  source "$HERE/_lib.sh"
  setupEnvironment
}

main() {
  # create admin user
  echo "Creating admin user..."
  docker exec -it "$MAIN_CONTAINER_NAME" \
    /opt/jboss/keycloak/bin/add-user-keycloak.sh \
    -u "${KEYCLOAK_ADMIN_USER}" \
    -p "${KEYCLOAK_ADMIN_PASSWORD}"
  sleep 5
}

( setupCommand; main )
