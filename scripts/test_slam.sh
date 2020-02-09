#!/bin/sh
xterm  -e "cd $(pwd)/..; source devel/setup.bash ; roslaunch my_robot world.launch " &
sleep 5
xterm  -e "cd $(pwd)/..; source devel/setup.bash ; rosrun teleop_twist_keyboard teleop_twist_keyboard.py  " &
sleep 2
xterm -e "cd $(pwd)/..; source devel/setup.bash ; roslaunch my_robot mapping.launch " &
sleep 3
xterm  -e "cd $(pwd)/..; source devel/setup.bash ; rosrun rviz rviz -d $(pwd)/../rvizConfig/slamconf.rviz" &
