#! /bin/bash
sudo docker rmi $(sudo docker images -f "dangling=true" -q)
sudo docker rm -f $(sudo docker ps -aq)
sudo docker volume ls -qf dangling=true | xargs -r sudo docker volume rm
sudo docker system prune --all --volumes --force