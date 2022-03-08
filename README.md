docker build -t docker-nginx .

docker run --name docker-nginx -d -p 80:80 docker-nginx

http://10.145.89.1/

docker-nginx        latest              7de2d50ade03        44 seconds ago      20.1MB

docker exec -it docker-nginx /bin/sh

docker container prune -f

docker image prune -a -f

docker volume prune -f

docker network prune -f

docker system prune -f

sudo rm -rf /var/lib/docker/volumes/*
