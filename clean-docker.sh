docker images -a | grep nt | awk '{print $3}' | xargs docker rmi -f
docker system prune -f
