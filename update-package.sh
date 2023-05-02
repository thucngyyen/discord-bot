container_id=`docker ps | grep 'discordbot' | awk '{print $1}'`

docker stop $container_id

docker rm $container_id

npm install ytdl-core@latest

docker build --tag discordbot .

docker run -d discordbot
