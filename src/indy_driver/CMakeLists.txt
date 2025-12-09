cmake_minimum_required(VERSION 2.8.3)
project(indy_driver)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  rospy
  rviz
  tf
  urdf
  xacro
  std_msgs
  message_generation
)

add_service_files(FILES 
  IndyService.srv
)

add_message_files(FILES
  ServoTx.msg
  ServoRx.msg
  ServoDataArray.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS rospy std_msgs message_runtime
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)
