gaz() {
  ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py "$@"
}

nav() {
  ros2 launch turtlebot3_navigation2 navigation2.launch.py "$@"
}

teleop() {
  ros2 run teleop_twist_keyboard teleop_twist_keyboard "$@"
}
