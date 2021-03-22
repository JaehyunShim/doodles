#--------------------------------------------------
## Docker Image
#--------------------------------------------------
# ROS Kinetic with Ubuntu 16.04
FROM jshim/ros:kinetic-ros-base-xenial

#--------------------------------------------------
## Maintainer
#--------------------------------------------------
MAINTAINER jhshim@robotis.com

#--------------------------------------------------
## Install ROS Tutorial packages
#--------------------------------------------------
RUN apt-get -y -qq update && \
    apt-get -y -qq upgrade

RUN cd ~/catkin_ws/src && \
    git clone -b kinetic-devel https://github.com/ros/ros_tutorials.git

RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /home/ubuntu/catkin_ws; catkin_make'
