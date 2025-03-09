# linux(roadmap) | containers




# cheat cheet

# tips
1. 不要使用latest作为版本tag，这样会导致跳过镜像制作


# python
## build
cd python

docker build -t dzw-python-app:latest .


docker run --rm -it -p 8089:5000 dzw-python-app:latest

curl http://127.0.0.1:8089  

## clean
docker image  rm dzw-python-app:latest

## java
cd java

docker build -t dzw-java-app:0.1 .


docker run --rm -it  dzw-java-app:0.1

## nodejs

cd nodejs

docker build -t dzw-nodejs-app:0.1 .

docker run --rm -it -p 8087:80 dzw-nodejs-app:0.1

curl http://127.0.0.1:8087/v1/square/4

## deubg
apk add curl