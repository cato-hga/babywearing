echo "The push will go here"
set -ev

echo $TRAVIS_COMMIT > ./deploy/deploy_hash
docker build -f Dockerfile.prod -t babywearing.azurecr.io/babywearing:prod .
docker ps
docker images
docker login babywearing.azurecr.io --username $DOCKER_USERNAME --password $DOCKER_PASSWORD
docker push babywearing.azurecr.io/babywearing:prod

