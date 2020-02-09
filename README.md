# Udacity-Home-Service-ROBOT
This Ros package is the implementation of the Home service project of the Robotics Software nanodegree by udacity.
## How to build
### 1.Create a workspace
First we need to create a ros workspace and for that we will create a directory in the desiered location and call it how ever you want (Ill use "nanodegree_ws"). We then call "catkin_make" which will build the workspace. After that we will see that more files were created. (NOTE: {distro} is the Ros version that you initially installed, I used melodic)
```
source /opt/ros/{distro}/setup.bash
mkdir -p ~/nanodegree_ws/src
cd ~/nanodegree_ws/
catkin_make
```
### 2.How to install the packet and compile
We will use git-clone to copy this file into the src directory of the workspace and apply catkin_make once more on the workspace main directory. This will compile the packet and be ready to run. 
```
cd ~/nanodegree_ws/src
git clone {this github link}
cd ~/nanodegree_ws/
catkin_make
```
### 3.Running the scripts
There were multipe scripts created for different task of the robot incuding SLAM test, Navigation test, add marker, pick object and home service. We will see the packages used in every script.
#### SLAM Test
  The Slam test will allow you to navigate the robot using the keyboard input, and while its moving across the enviromnet it will start to create a map and localize itself in the enviroment. This can then be saved using the map_server node that comes officialy by the navigation stack.

To run the SLAM test, the shell script is located in the scripts directory (NOTE: you must make the file executable):
```
cd ~/nanodegree_ws/src/scripts
./test_slam.sh
```
To save the map you can use the following code, and save it in the map directory to use it for the navigation test
```
rosrun map_server map_saver -f myMap
```
#### Navigation Test
The navigation test allows for navigation of the environment using Rviz 2D nav goal, it also uses monte carlo localization to localize the pose of the robot in the environmetn using a map that was created using the slam test.

To run the Navigation test, the shell script is located in the scripts directory (NOTE: you must make the file executable):
```
cd ~/nanodegree_ws/src/scripts
./test_slam.sh
```
#### add marker Test
The add marker test just shows the use of markers in the Rviz environment, in this case a marker will represent an object that will be picked up by the robot. In this program the marker will just appear in the original position of the object, wait 5 seconds, and appear in the drop-off location.

To run the add marker test, the shell script is located in the scripts directory (NOTE: you must make the file executable):
```
cd ~/nanodegree_ws/src/scripts
./test_slam.sh
```
#### Pick_objects Test
The Pick_objects use navigation goals to make the robot go to the pick up zone, once it gets there it will wait 5 seconds, and then it will navigate the robot to the drop-off zone.

To run the pick_objects test, the shell script is located in the scripts directory (NOTE: you must make the file executable):
```
cd ~/nanodegree_ws/src/scripts
./test_slam.sh
```
#### Home Service
The home service script is the union of all the test allowing the home service robot to pick up an object and take it to the drop-off zone, while knowing where it is and avoiding any obstacle. The object is also represented as a marker to allow for eaiser recognition. The map of the environment was mapped previously using fast slam and uses that map to apply montecarlo localization while navigating. 

To run the Home Service, the shell script is located in the scripts directory (NOTE: you must make the file executable):
```
cd ~/nanodegree_ws/src/scripts
./test_slam.sh
```
## Packages Used
### slam_gmapping:
The slam gmapping 
