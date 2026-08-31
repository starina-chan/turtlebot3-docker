FROM osrf/ros:humble-desktop-full

RUN apt-get update && apt-get install -y --no-install-recommends \
      ros-humble-turtlebot3 \
      ros-humble-turtlebot3-msgs \
      ros-humble-turtlebot3-simulations \
      xvfb \
      x11vnc \
      fluxbox \
      novnc \
      websockify \
    && rm -rf /var/lib/apt/lists/*

ENV TURTLEBOT3_MODEL=burger
ENV DISPLAY=:1
# disable gazebo sound device
ENV ALSOFT_DRIVERS=null

RUN { \
      echo "source /opt/ros/humble/setup.bash"; \
      echo "source /usr/share/gazebo-11/setup.sh"; \
    } >> /root/.bashrc

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]
