all: build

build: 
	sudo docker build -t joettaau:v1.0 .
	sudo docker run --name cont -v `pwd`/runner/nginx:/etc/nginx/ -p 80:81 -d joettaau:v1.0

test:
	curl localhost:80

clear:
	sudo docker stop cont
	sudo docker rm cont
	sudo docker rmi joettaau:v1.0