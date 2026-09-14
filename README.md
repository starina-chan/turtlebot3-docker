# turtlebot3-docker

Dockerized TurtleBot3 simulation (ROS 2 Humble + Gazebo), with Gazebo and RViz2 GUI accessible via browser.

## Requirements

- Docker and Docker Compose

## Usage

Build the image and start the container:

```sh
make build
```

Open a browser to [http://localhost:6080/vnc.html](http://localhost:6080/vnc.html) to view Gazebo and RViz2.

Enter the container (and run your ROS2 commands):

```sh
make enter
```

Stop and remove the container (including volume and data):

```sh
make down
```
