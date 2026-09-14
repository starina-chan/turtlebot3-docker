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

Enter the container:

```sh
make enter
```

Run ROS2 commands. Open a new terminal for each command:

```sh
ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py "$@" # or just gaz
ros2 launch turtlebot3_navigation2 navigation2.launch.py "$@" # or just nav
ros2 run teleop_twist_keyboard teleop_twist_keyboard "$@" # or just teleop
```

Stop and remove the container (including volume and data):

```sh
make down
```
