docker container stop toy_docker_db_influx
docker container rm toy_docker_db_influx
docker image rm toy_docker_db_influx

sudo rm -rf ./data
sudo rm -rf ./config

DOCKER_BUILDKIT=1 docker build --tag toy_docker_db_influx .

docker image ls

docker-compose up --detach
#docker-compose up


docker exec toy_docker_db_influx influx setup --username influxdb --password influxdb --org home --bucket home --force

echo ------------------------------------------
echo 1. into docker
echo docker exec -it toy_docker_db_influx /bin/bash
echo Good luck!
echo ------------------------------------------

