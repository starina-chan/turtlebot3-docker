cmake_minimum_required(VERSION 3.5)
project(turtlebot3_navigation2)

find_package(ament_cmake REQUIRED)

install(DIRECTORY launch param
  DESTINATION share/${PROJECT_NAME}
)

ament_package()
