# Udacity-Home-Service-ROBOT
This Ros package is the implementation of the Home service project of the Robotics Software nanodegree by udacity.
# How to build
#### 1.Create a workspace
First we need to create a ros workspace and for that we will create a directory in the desiered location and call it how ever you want (Ill use "nanodegree_ws"). We then call "catkin_make" which will build the workspace. After that we will see that more files were created. (NOTE: {distro} is the Ros version that you initially installed, I used melodic)
```
source /opt/ros/{distro}/setup.bash
mkdir -p ~/nanodegree_ws/src
cd ~/nanodegree_ws/
catkin_make
```
#### 2.How to install the packet and compile
We will use git-clone to copy this file into the src directory of the workspace and apply catkin_make once more on the workspace main directory. This will compile the packet and be ready to run. 
```
cd ~/nanodegree_ws/src
git clone {this github link}
cd ~/nanodegree_ws/
catkin_make
```
#### 3.Running the scripts
