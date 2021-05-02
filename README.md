# Your own Docker image

> This repo explains how to build and publish your own Docker image.   

## Usage 
### Create a file, which will be copied in a container
```bash
sudo printf "console.log('Start working');" > /Users/makuznet/Documents/sfactory/8_5_2-my-docker-image/server.js
```
### Create a Dockerfile
```bash
sudo printf "FROM ubuntu\nRUN apt update\nRUN apt install -y nodejs\nCOPY server.js /\nCMD ["/usr/bin/node", "server.js"]" > /Users/makuznet/Documents/sfactory/8_5_2-my-docker-image/Dockerfile
```
### Build your Docker image from your Dockerfile
> Don't miss the dot at the end of the command !  
```bash
sudo docker build -t 8_5_2-docker-image .
```
### Check your Docker image has been built
```bash
docker images -a
```
### Run your container locally
```bash
sudo docker run -p 9911:80 --name server 8_5_2-docker-image
```
### To publish your Docker image
```bash
docker images -a # get an IMAGE ID
docker tag eaae2a6104df makuznet/8_5_2-docker-image:latest
docker login
docker push makuznet/8_5_2-docker-image:latest
```
> Your login is `your-docker-id` !

## Installation
### Clone this repo
```shell
docker pull makuznet/8_5_2-docker-image:latest
```
## Acknowledgments
This repo was inspired by [skillfactory.ru](https://skillfactory.ru/devops#syllabus) team
## See Also
-[Docker Hub](https://hub.docker.com)  
-[My Docker repo on Docker Hub](https://hub.docker.com/repository/docker/makuznet/8_5_2-docker-image)  

## License
Follow all involved parties licenses terms and conditions.