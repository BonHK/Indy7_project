# Indy7_project model modification file structure

## [2025.12.12] Adding the work table model

### Added files

* Robot + Table description
    * `indy_description/urdf/indy_with_table.xacro`
    * `indy_description/urdf/environments/table.xacro`

* Gazebo world (static table)
    * `indy_gazebo/worlds/indy_table.world`

### Modified files
* `indy_description/launch/indy_description.launch`
* `indy_gazebo/launch/indy_gazebo.launch`

### How to use simulation
```
roslaunch indy_gazebo indy_gazebo.launch
roslaunch indy_moveit moveit_gazebo.launch

```


<img width="2880" height="1800" alt="Image" src="https://github.com/user-attachments/assets/2a8411aa-e8ee-45d4-83a6-df04cb845806" />

## [2025.12.13] Adding the robotiq gripper model

### Added files

* robotiq full file

* Robot + Table + robotiq_85_gripper description
    * `indy_description/urdf/indy_with_table_and_gripper.xacro`

* Gripper self-collision definition
    * `indy_moveit/config/indy_macro.srdf.xacro`
    * Gripper model self-collision problem solving

* Robotiq_85 position controller yaml
    * `robotiq_description/config/robotiq_85_controller.yaml`

### Modified files
* `indy_description/launch/indy_description.launch`
* `robotiq_gazebo/launch/hande_basic.launch` - Test file

### How to use simulation
* Gazebo and Moveit simulation environments execution
```
roslaunch indy_gazebo indy_gazebo.launch
roslaunch indy_moveit moveit_gazebo.launch

```

* Yaml file loading
    * `src/robotiq/description/config` - existing yaml file
```
rosparam load robotiq_85_controller.yaml
rosrun controller_manager spawner gripper_controller

```

* Gripper motion(0 ~ 0.80285)
```
close: rostopic pub /gripper_controller/command std_msgs/Float64 “data: 0.8”
open: rostopic pub /gripper_controller/command std_msgs/Float64 “data: 0.0”

```

<img width="2880" height="1800" alt="Image" src="https://github.com/user-attachments/assets/60da30b4-0e15-4eb7-9c3c-d672d7f800f0" />