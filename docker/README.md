# create dockerfiles
FROM <baseimage> 

WORKDIR /app

COPY . .

RUN <command>

EXPOSE 80

CMD <command>

# create multistage dockefiles
FROM <baseimage> as builder

RUN <command> # e.g., g++ main.cpp

FROM scratch as serve

COPY --from=builer ./hello-world ./hello-world

CMD ["./hello-world"]

# create docker images
docker build <path>

docker build --file ./path/to/Dockerfile

docker build --tag user/repo:0.1.0

docker image ls

# create docker containers
docker run <image-name>

docker run https://privateregistry.com/<image-name>

docker run --detached <image-name>

docker container ls

docker ps

docker container ls --all

docker stop <container-id>

docker rm <container-id>

docke start <container-id>

docker restart <container-id>

docker run --rm <image-name>


# access docker containers
docker run --publish <host-port>:<container-port> <image-name>

docker exec --interactive --tty <container-id> <command>

docker exec --interactive --tty <container-id> sh 

exit

# create docker volumes
docker run --volume <volume-name>:/path/in/container <image-name>

docker run --volume /path/on/host:/path/in/contianer <image-name>

docker volume ls