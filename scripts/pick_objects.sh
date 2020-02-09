#!/bin/sh
xterm  -e "cd $(pwd)/../..; source devel/setup.bash ; roslaunch my_robot world.launch " &
sleep 5
xterm -e "cd $(pwd)/../..; source devel/setup.bash ; roslaunch my_robot amcl.launch  " &
sleep 3
xterm  -e "cd $(pwd)/../..; source devel/setup.bash ; rosrun rviz rviz -d $(pwd)/../rvizConfig/amclconf.rviz" &
sleep 5
xterm -e "cd $(pwd)/../..; source devel/setup.bash ; rosrun pick_objects pick_objects  " &
