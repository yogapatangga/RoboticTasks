#!/bin/bash

# Menjalankan ROS Master
roscore &

# Menunggu beberapa detik untuk memastikan roscore berjalan
sleep 3

# Meluncurkan node untuk kontrol robot
rosrun robot_control robot_control_node &

# Meluncurkan node sensor lidar
rosrun sensor_drivers lidar_node &

# Menjalankan simulasi robot (turtle)
rosrun turtlesim turtlesim_node