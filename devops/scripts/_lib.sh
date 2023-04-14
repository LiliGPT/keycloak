# SOURCE ME
# do not run this script directly

setupEnvironment() {
  local HERE=$(cd $(dirname "$0"); pwd)
  export PROJECT_ROOT=$(cd "$HERE/../.."; pwd)

  # load .env.sample file
  loadEnvFile "$PROJECT_ROOT/.env.example"

  # load .env file if it exists
  if [ -f "$PROJECT_ROOT/.env" ]; then
    loadEnvFile "$PROJECT_ROOT/.env"
  fi

  # Default Environment Variables
  export DOCKER_COMPOSE_FILE="$PROJECT_ROOT/devops/docker/docker-compose.yml"
  export MAIN_CONTAINER_NAME="liligpt_keycloak"
  export MAIN_CONTAINER_SERVICE_NAME="keycloak"
}

loadEnvFile() {
  local ENV_FILE="$1"
  set -a
  source "$ENV_FILE"
  set +a
}
