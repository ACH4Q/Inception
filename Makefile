COMPOSE_CMD = docker-compose -f srcs/docker-compose.yml
DATA_PATH = /home/$(USER)/data

all:
	@mkdir -p $(DATA_PATH)/mariadb
	@mkdir -p $(DATA_PATH)/wordpress
	$(COMPOSE_CMD) up --build -d

down:
	$(COMPOSE_CMD) down

clean:
	$(COMPOSE_CMD) down -v --rmi all
	sudo rm -rf $(DATA_PATH)/mariadb/*
	sudo rm -rf $(DATA_PATH)/wordpress/*

re: clean all

.PHONY: all down clean re