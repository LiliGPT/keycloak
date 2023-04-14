# SOURCE ME
# do not run this script directly

setupEnvironment() {
  local HERE=$(cd $(dirname "$0"); pwd)
  export PROJECT_ROOT=$(cd "$HERE/../.."; pwd)
  ls -la "$PROJECT_ROOT"

  # load .env file
  set -a
  source "$PROJECT_ROOT/.env"
  set +a

  # Default Environment Variables
  export DOCKER_COMPOSE_FILE="$PROJECT_ROOT/devops/docker/docker-compose.yml"
  export MAIN_CONTAINER_NAME="liligpt_keycloak"
  export MAIN_CONTAINER_SERVICE_NAME="keycloak"
}
