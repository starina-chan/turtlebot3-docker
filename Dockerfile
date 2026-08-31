FROM osrf/ros:humble-desktop-full

RUN apt-get update && apt-get install -y --no-install-recommends \
      ros-humble-turtlebot3 \
      ros-humble-turtlebot3-msgs \
      ros-humble-turtlebot3-simulations \
    && rm -rf /var/lib/apt/lists/*

ENV TURTLEBOT3_MODEL=burger

RUN echo "source /opt/ros/humble/setup.bash" >> /root/.bashrc

CMD ["bash"]
