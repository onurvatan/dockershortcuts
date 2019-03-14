#list running containers
docker ps
#images will be created from the Docker Hub registry.
docker pull
#command builds Docker images from current directory
docker build -t my_container .
#docker run
docker run my_image -it bash
#docker logs
docker logs --follow my_container
#docker rm
docker rm my_container
#docker rmi 
docker rmi 
#docker stop
docker stop my_container
#kill all running containers
docker kill $(docker ps -q)
#remove unused images
docker rmi $(docker images -f "dangling=true" -q)
#remove all images
docker rmi $(docker images -q)
#stop all containers
docker stop $(docker ps -a -q)
#remove all containers
docker rm $(docker ps -a -q)
#docker compose yml or yaml file
docker-compose up
docker-compose down
