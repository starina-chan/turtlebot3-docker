CONTAINER := turtlebot3-docker-turtlebot3-1

.PHONY: build enter down

build:
	docker compose up -d --build
	@echo "Open http://localhost:6080/vnc.html to view Gazebo and RViz2"

enter:
	docker exec -it sim bash

down:
	docker compose down
