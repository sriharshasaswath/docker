restart
sudo apt install git -y
git clone https://github.com/dockersamples/example-voting-app
cd example-voting-app
ls
docker run -d --name redis redis:alpine
docker run -d --name db postgres:15-alpine
docker run -d --name voting-app -p 5000:80 --link redis:redis voting-app
docker build -t voting-app -f vote/Dockerfile vote/
docker build -t result-app -f result/Dockerfile result/
docker build -t worker -f worker/Dockerfile worker/
docker run -d --name voting-app -p 5000:80 --link redis:redis voting-app
docker run -d --name worker --link redis:redis --link db:db worker
docker build -t worker -f worker/Dockerfile worker/
ls
cd worker
ls
cat Dockerfile
cd ..
docker build -t worker -f worker/Dockerfile worker/
docker build . -t voting-app
docker images
docker ps
docker images
docker ps
docker run  -d --name=db postgres
docker stop db
docker rm db
docker run  -d --name=db postgres:9.4
cd worker
docker build . -t worker-app
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -q)
cd
ls
sudo rm example-voting-app
sudo rmd example-voting-app
sudo rmi example-voting-app
sudo rm -a example-voting-app
sudo rmdir example-voting-app
sudo rm -rf example-voting-app
ls
clear
clear
sudo apt update -y
clear
sudo apt install docker
sudo apt install docker.io
docker -v
clear
docker -v
sudo apt git -y
sudo apt install git 
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
newgrp docker
clear
docker run -d --name redis -p 6379:6379 redis
docker run -d --name db -p 5432:5432 postgres
docker run -d --name voting-app -p 5000:80 -e REDIS_HOST=redis --link redis dockersamples/examplevotingapp_vote
docker run -d --name worker --link redis --link db dockersamples/examplevotingapp_worker
docker run -d --name result-app -p 5001:80 -e DB_HOST=db --link db dockersamples/examplevotingapp_result
docker ps
docker ps -a
docker logs db
docker images
docker stop postgres
docker rm postgres
docker rmi postgres
docker images
docker stop db
docker rm db
docker run -d --name db -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=postgres -p 5432:5432 postgres
docker run -d --name worker --link redis --link db dockersamples/examplevotingapp_worker
docker stop worker
docker rm worker
docker run -d --name worker --link redis --link db dockersamples/examplevotingapp_worker
docker run -d --name result-app -p 5001:80 -e DB_HOST=db --link db dockersamples/examplevotingapp_result
docker stop result-app
docker rm result-app
docker run -d --name result-app -p 5001:80 -e DB_HOST=db --link db dockersamples/examplevotingapp_result
clear
mkdir dockerized-nodejs-service && cd dockerized-nodejs-service
npm init -y
sudo apt install npm
npm install express basic-auth dotenv
nano server.js
nano .env
nano .gitignore
node server.js
ls
cat package.json
npm install express-basic-auth
node server.js
nano Dockerfile
nano .dockerignore
docker build -t my-node-service .
docker run -p 3000:3000 --env-file .env my-node-service
