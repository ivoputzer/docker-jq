DOCKER_ID_USER=ivoputzer
NAME=jq
all: clean build test
build:
	docker build --rm -t "$(DOCKER_ID_USER)/$(NAME)" .
test:
	docker run --name $(NAME) -it "$(DOCKER_ID_USER)/$(NAME)"
clean:
	docker ps -aqf name=$(NAME) | xargs docker rm
login:
	docker login
push:
	docker push $(DOCKER_ID_USER)/$(NAME)
