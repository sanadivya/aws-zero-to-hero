
#!/bin/bash
set -e

IMAGE="DOCKER_REGISTRY_USERNAME/simple-python-flask-app:latest"

docker pull "$IMAGE"

docker run -d \
  --name simple-python-flask-app \
  --restart unless-stopped \
  -p 5000:5000 \
  "$IMAGE"
