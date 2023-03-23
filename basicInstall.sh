#!/bin/bash
sudo apt remove --purge libreoffice* thunderbird update-manager update-manager-core update-notifier* rhythmbox gamemode* aisleriot cups* gnome-mines gnome-calculator gnome-calendar
rosDistro="humble"
sudo apt update
sudo apt upgrade
sudo apt full-upgrade
sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
sudo apt install software-properties-common
sudo add-apt-repository universe
sudo apt install curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
sudo apt update
sudo apt upgrade
sudo apt full-upgrade
sudo apt install ros-${rosDistro}-ros-base
sudo apt install ros-dev-tools
sudo apt install libudev-dev
sudo apt install libc6:armhf
sudo apt install neovim
sudo apt install ros-${rosDistro}-hardware-inteface
sudo apt install ros-${rosDistro}-cartographer
sudo apt install ros-${rosDistro}-cartographer-ros
sudo apt install ros-${rosDistro}-navigation2
sudo apt install ros-${rosDistro}-nav2-bringup
sudo apt install ros-${rosDistro}-dynamixel-sdk
sudo apt install ros-${rosDistro}-turtlebot3-msgs
sudo apt install ros-${rosDistro}-turtlebot3
sudo dpkg --add-architecture armhf
