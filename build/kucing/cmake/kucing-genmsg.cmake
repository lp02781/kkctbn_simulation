# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kucing: 4 messages, 0 services")

set(MSG_I_FLAGS "-Ikucing:/home/mfikih15/kkctbn_simulation/src/kucing/msg;-Imavros_msgs:/opt/ros/melodic/share/mavros_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeographic_msgs:/opt/ros/melodic/share/geographic_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Iuuid_msgs:/opt/ros/melodic/share/uuid_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kucing_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_flag.msg" NAME_WE)
add_custom_target(_kucing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kucing" "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_flag.msg" ""
)

get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/joystick_node.msg" NAME_WE)
add_custom_target(_kucing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kucing" "/home/mfikih15/kkctbn_simulation/src/kucing/msg/joystick_node.msg" ""
)

get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_joystick.msg" NAME_WE)
add_custom_target(_kucing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kucing" "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_joystick.msg" ""
)

get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/override_motor.msg" NAME_WE)
add_custom_target(_kucing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kucing" "/home/mfikih15/kkctbn_simulation/src/kucing/msg/override_motor.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_flag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kucing
)
_generate_msg_cpp(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/joystick_node.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kucing
)
_generate_msg_cpp(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kucing
)
_generate_msg_cpp(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/override_motor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kucing
)

### Generating Services

### Generating Module File
_generate_module_cpp(kucing
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kucing
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kucing_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kucing_generate_messages kucing_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_flag.msg" NAME_WE)
add_dependencies(kucing_generate_messages_cpp _kucing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/joystick_node.msg" NAME_WE)
add_dependencies(kucing_generate_messages_cpp _kucing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_joystick.msg" NAME_WE)
add_dependencies(kucing_generate_messages_cpp _kucing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/override_motor.msg" NAME_WE)
add_dependencies(kucing_generate_messages_cpp _kucing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kucing_gencpp)
add_dependencies(kucing_gencpp kucing_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kucing_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_flag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kucing
)
_generate_msg_eus(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/joystick_node.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kucing
)
_generate_msg_eus(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kucing
)
_generate_msg_eus(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/override_motor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kucing
)

### Generating Services

### Generating Module File
_generate_module_eus(kucing
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kucing
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(kucing_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(kucing_generate_messages kucing_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_flag.msg" NAME_WE)
add_dependencies(kucing_generate_messages_eus _kucing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/joystick_node.msg" NAME_WE)
add_dependencies(kucing_generate_messages_eus _kucing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_joystick.msg" NAME_WE)
add_dependencies(kucing_generate_messages_eus _kucing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/override_motor.msg" NAME_WE)
add_dependencies(kucing_generate_messages_eus _kucing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kucing_geneus)
add_dependencies(kucing_geneus kucing_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kucing_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_flag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kucing
)
_generate_msg_lisp(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/joystick_node.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kucing
)
_generate_msg_lisp(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kucing
)
_generate_msg_lisp(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/override_motor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kucing
)

### Generating Services

### Generating Module File
_generate_module_lisp(kucing
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kucing
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kucing_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kucing_generate_messages kucing_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_flag.msg" NAME_WE)
add_dependencies(kucing_generate_messages_lisp _kucing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/joystick_node.msg" NAME_WE)
add_dependencies(kucing_generate_messages_lisp _kucing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_joystick.msg" NAME_WE)
add_dependencies(kucing_generate_messages_lisp _kucing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/override_motor.msg" NAME_WE)
add_dependencies(kucing_generate_messages_lisp _kucing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kucing_genlisp)
add_dependencies(kucing_genlisp kucing_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kucing_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_flag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kucing
)
_generate_msg_nodejs(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/joystick_node.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kucing
)
_generate_msg_nodejs(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kucing
)
_generate_msg_nodejs(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/override_motor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kucing
)

### Generating Services

### Generating Module File
_generate_module_nodejs(kucing
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kucing
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(kucing_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(kucing_generate_messages kucing_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_flag.msg" NAME_WE)
add_dependencies(kucing_generate_messages_nodejs _kucing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/joystick_node.msg" NAME_WE)
add_dependencies(kucing_generate_messages_nodejs _kucing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_joystick.msg" NAME_WE)
add_dependencies(kucing_generate_messages_nodejs _kucing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/override_motor.msg" NAME_WE)
add_dependencies(kucing_generate_messages_nodejs _kucing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kucing_gennodejs)
add_dependencies(kucing_gennodejs kucing_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kucing_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_flag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kucing
)
_generate_msg_py(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/joystick_node.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kucing
)
_generate_msg_py(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kucing
)
_generate_msg_py(kucing
  "/home/mfikih15/kkctbn_simulation/src/kucing/msg/override_motor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kucing
)

### Generating Services

### Generating Module File
_generate_module_py(kucing
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kucing
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kucing_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kucing_generate_messages kucing_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_flag.msg" NAME_WE)
add_dependencies(kucing_generate_messages_py _kucing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/joystick_node.msg" NAME_WE)
add_dependencies(kucing_generate_messages_py _kucing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/motor_joystick.msg" NAME_WE)
add_dependencies(kucing_generate_messages_py _kucing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mfikih15/kkctbn_simulation/src/kucing/msg/override_motor.msg" NAME_WE)
add_dependencies(kucing_generate_messages_py _kucing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kucing_genpy)
add_dependencies(kucing_genpy kucing_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kucing_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kucing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kucing
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET mavros_msgs_generate_messages_cpp)
  add_dependencies(kucing_generate_messages_cpp mavros_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(kucing_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(kucing_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kucing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kucing
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET mavros_msgs_generate_messages_eus)
  add_dependencies(kucing_generate_messages_eus mavros_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(kucing_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(kucing_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kucing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kucing
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET mavros_msgs_generate_messages_lisp)
  add_dependencies(kucing_generate_messages_lisp mavros_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(kucing_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(kucing_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kucing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kucing
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET mavros_msgs_generate_messages_nodejs)
  add_dependencies(kucing_generate_messages_nodejs mavros_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(kucing_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(kucing_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kucing)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kucing\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kucing
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET mavros_msgs_generate_messages_py)
  add_dependencies(kucing_generate_messages_py mavros_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(kucing_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(kucing_generate_messages_py sensor_msgs_generate_messages_py)
endif()
