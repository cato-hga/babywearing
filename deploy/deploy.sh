echo "The push will go here"
docker ps
docker images
echo "username:"
echo $DOCKER_USERNAME
docker login babywearing.azurecr.io --username $DOCKER_USERNAME --password $DOCKER_PASSWORD
docker push babywearing.azurecr.io/babywearing:prod

