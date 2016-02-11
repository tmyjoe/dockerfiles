docker rm mysql

docker volume create --name mysql_data
docker run -d --name mysql -p 3306:3306 -v mysql_data:/var/lib/mysql -v ${PWD}:/docker-entrypoint-initdb.d -e MYSQL_ROOT_PASSWORD=password mysql
