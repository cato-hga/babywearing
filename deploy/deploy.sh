echo "The push will go here"
echo $TRAVIS_COMMIT
docker ps
docker images
docker login babywearing.azurecr.io --username $DOCKER_USERNAME --password $DOCKER_PASSWORD
docker push babywearing.azurecr.io/babywearing:prod

