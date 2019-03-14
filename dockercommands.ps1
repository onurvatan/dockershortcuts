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
docker-compose up -d
docker-compose down
#filter images
$ docker images --filter "label=com.example.version"
#images format
docker images --format "{{.ID}}: {{.Repository}}"

#elastic search run
docker network create somenetwork
docker run -d --name elasticsearch --net somenetwork -p 9200:9200 -p 9300:9300 
docker pull docker.elastic.co/elasticsearch/elasticsearch:6.6.2
docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:6.6.2

$ docker run -i -t ubuntu:12.04 /bin/bash

docker-compose up -d --force-recreate --build