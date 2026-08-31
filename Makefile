CONTAINER := turtlebot3-docker-turtlebot3-1

.PHONY: build enter down

build:
	docker compose up -d --build

enter:
	docker exec -it sim bash

down:
	docker compose down
