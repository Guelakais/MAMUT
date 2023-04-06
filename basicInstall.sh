#!/bin/bash
sudo apt remove --auto-remove --purge libreoffice* thunderbird update-manager \
update-manager-core rhythmbox gamemode* aisleriot cups* \
gnome-mines gnome-calculator gnome-calendar gnome-todo \
 gnome-sudoku brltty-x11 \
xbrlapi python3-brlapi
rosDistro="humble"
sudo dpkg --add-architecture armhf
sudo add-apt-repository universe
sudo apt update
sudo apt upgrade
sudo apt full-upgrade
sudo apt install openssh-server locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
sudo apt install software-properties-common
sudo apt install curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o \
/usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
sudo apt update
sudo apt upgrade
sudo apt full-upgrade
sudo apt install libudev-dev libc6:armhf neovim \
ros-${rosDistro}-ros-base \
ros-dev-tools \
ros-${rosDistro}-hardware-inteface \
ros-${rosDistro}-cartographer \
ros-${rosDistro}-cartographer-ros \
ros-${rosDistro}-navigation2 \
ros-${rosDistro}-nav2-bringup \
ros-${rosDistro}-dynamixel-sdk \
ros-${rosDistro}-turtlebot3-msgs \
ros-${rosDistro}-turtlebot3
