docker build -t spark-master-image docker/master/.
docker build -t spark-worker-image docker/worker/.
docker build -t spark-driver-image docker/driver/.
docker compose up