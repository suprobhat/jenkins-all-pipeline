
Create docker file - Dockerfile
Run build command - docker build -t <imagename> .

FROM ubuntu
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install apache2
RUN apt-get -y install apache2-utils
COPY index.html /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]


--------------------------------------------------------------------------------------------------------
Docker run command: docker run -d -p <hostport>:<default port> --name container name <image_name>


Docker container delete - docker rm -f <image.id>

Docker images check - docker images
Docker images Delete - docker rmi <image_name>

Docker creates custom images: create directory create <Dockerfile>

Build images - docker build -t <image_name> .

Docker images Backup - docker save -o <image_name> <name>tar.gz

Docker restore - docker load -i <name>.tar.gz

                                                       Ubuntu run container

docker run -it --name ubuntu_test1 ubuntu

                                              Docker networking

Check networking - docker network ls

Create network manually - docker network create -d bridge< mynetwork>

Docker network check - docker network inspect <network name>

Docker connect to own network - docker network connect <networkname> <container id / or container name >

 docker network connect mynetwork newphp

Docker disconnect to own network - docker network disconnect <networkname> <container id or container name>.

docker network disconnect mynetwork phpnew

Docker delete network: docker network rm <network name>

 docker network rm mynetwork

   

                                          Docker volume

Create docker volume - docker volume create <volume name>

Docker mount volume -

docker run -d -p <host_port>: <default_port> --mount source=<volume_name>,target=<docker volume path> --name <container_name> <imageid or imagename>

docker run -d -p 412:80 --mount source=mynewvolume,target=/var/www/html --name new mynewubuntu

docker run -d -p 444:80 -v [volumename: <partname>] --name <container_name> < image name>

docker run -d -p 444:80 -v mynewvolume:/var/www/html --name gfs httpd

Docker volume mount point check - docker volume inspect <volume name>

Docker local volume path : /var/lib/docker/volumes/<volume name>/_data
                                           /var/lib/docker/volumes/new/_data

Docker delete volume : docker volume rm <volume_name>




                     
Docker environment  set env   :  docker run -d -p 111:80 --env [ password=own password] --name <container_name> < image name or image id>      

docker run -d -p 111:80 --env password=1234 --name hfx httpd                


   

                                         Docker hub custom image push

Create docker hub account create

Create Repository 

Create Tage :  docker tag <image name> <docker_hub_username>/<Repository_name>:<tagname -version>

docker tag newubuntu suprobhat1997/suprobhat:newubuntu-v1


Docker login docker hub - docker login
Username:
Password:

Docker push - docker push <dockerhub_username>/<Repository_name>:<tagname -version>

docker push suprobhat1997/suprobhat:newubuntu-v1


                            Docker container login

Docker container login - docker exec -it <container id or container_name> /bin bash/

docker exec -it hfx /bin/bash



Docker all images remove -  docker image prune -a

Docker all delete container - docker rm -f $(docker ps -a -q)


