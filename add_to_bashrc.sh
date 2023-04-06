#!/bin/bash

BASHRC_FILE="$HOME/.bashrc"
# Define an array of lines to add to the .bashrc file
declare -a lines=(
    "alias rPIColcon='colcon build --executor sequential --parallel-workers 1 --cmake-clean-first --symlink-install --continue-on-error --cmake-skip-unavailable'"
    "alias turtlebot3Bringup='ros2 launch turtlebot3_bringup robot.launch.py'"
    "alias teleop='ros2 run turtlebot3_teleop teleop_keyboard'"
    "source /opt/ros/humble/setup.bash"
    "export ROS_DOMAIN_ID=30"
    ". \"$HOME/.cargo/env\""
    "source /usr/share/colcon_cd/function/colcon_cd.sh"
    "export _colcon_cd_root=/opt/ros/humble/"
    "source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash"
    "export LDS_MODEL=LDS-01"
    "export TURTLEBOT3_MODEL=burger"
    "export OPENCR_PORT=/dev/ttyACM0"
    "export OPENCR_MODEL=burger"
    "export MAKEFLAGS=\"-j1\""
)

# Append lines to the end of the .bashrc file using a for loop
for line in "${lines[@]}"
do
    echo "$line" >> "$BASHRC_FILE"
done
