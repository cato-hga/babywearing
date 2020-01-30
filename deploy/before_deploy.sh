echo $TRAVIS_COMMIT > ./deploy/deploy_hash
docker build -f Dockerfile.prod -t babywearing.azurecr.io/babywearing:prod .
