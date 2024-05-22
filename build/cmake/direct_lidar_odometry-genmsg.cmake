# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "direct_lidar_odometry: 0 messages, 2 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(direct_lidar_odometry_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/g/workspace/dlo-slam_noted/src/srv/save_pcd.srv" NAME_WE)
add_custom_target(_direct_lidar_odometry_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "direct_lidar_odometry" "/home/g/workspace/dlo-slam_noted/src/srv/save_pcd.srv" ""
)

get_filename_component(_filename "/home/g/workspace/dlo-slam_noted/src/srv/save_traj.srv" NAME_WE)
add_custom_target(_direct_lidar_odometry_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "direct_lidar_odometry" "/home/g/workspace/dlo-slam_noted/src/srv/save_traj.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(direct_lidar_odometry
  "/home/g/workspace/dlo-slam_noted/src/srv/save_pcd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/direct_lidar_odometry
)
_generate_srv_cpp(direct_lidar_odometry
  "/home/g/workspace/dlo-slam_noted/src/srv/save_traj.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/direct_lidar_odometry
)

### Generating Module File
_generate_module_cpp(direct_lidar_odometry
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/direct_lidar_odometry
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(direct_lidar_odometry_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(direct_lidar_odometry_generate_messages direct_lidar_odometry_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/g/workspace/dlo-slam_noted/src/srv/save_pcd.srv" NAME_WE)
add_dependencies(direct_lidar_odometry_generate_messages_cpp _direct_lidar_odometry_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/g/workspace/dlo-slam_noted/src/srv/save_traj.srv" NAME_WE)
add_dependencies(direct_lidar_odometry_generate_messages_cpp _direct_lidar_odometry_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(direct_lidar_odometry_gencpp)
add_dependencies(direct_lidar_odometry_gencpp direct_lidar_odometry_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS direct_lidar_odometry_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(direct_lidar_odometry
  "/home/g/workspace/dlo-slam_noted/src/srv/save_pcd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/direct_lidar_odometry
)
_generate_srv_eus(direct_lidar_odometry
  "/home/g/workspace/dlo-slam_noted/src/srv/save_traj.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/direct_lidar_odometry
)

### Generating Module File
_generate_module_eus(direct_lidar_odometry
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/direct_lidar_odometry
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(direct_lidar_odometry_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(direct_lidar_odometry_generate_messages direct_lidar_odometry_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/g/workspace/dlo-slam_noted/src/srv/save_pcd.srv" NAME_WE)
add_dependencies(direct_lidar_odometry_generate_messages_eus _direct_lidar_odometry_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/g/workspace/dlo-slam_noted/src/srv/save_traj.srv" NAME_WE)
add_dependencies(direct_lidar_odometry_generate_messages_eus _direct_lidar_odometry_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(direct_lidar_odometry_geneus)
add_dependencies(direct_lidar_odometry_geneus direct_lidar_odometry_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS direct_lidar_odometry_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(direct_lidar_odometry
  "/home/g/workspace/dlo-slam_noted/src/srv/save_pcd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/direct_lidar_odometry
)
_generate_srv_lisp(direct_lidar_odometry
  "/home/g/workspace/dlo-slam_noted/src/srv/save_traj.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/direct_lidar_odometry
)

### Generating Module File
_generate_module_lisp(direct_lidar_odometry
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/direct_lidar_odometry
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(direct_lidar_odometry_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(direct_lidar_odometry_generate_messages direct_lidar_odometry_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/g/workspace/dlo-slam_noted/src/srv/save_pcd.srv" NAME_WE)
add_dependencies(direct_lidar_odometry_generate_messages_lisp _direct_lidar_odometry_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/g/workspace/dlo-slam_noted/src/srv/save_traj.srv" NAME_WE)
add_dependencies(direct_lidar_odometry_generate_messages_lisp _direct_lidar_odometry_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(direct_lidar_odometry_genlisp)
add_dependencies(direct_lidar_odometry_genlisp direct_lidar_odometry_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS direct_lidar_odometry_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(direct_lidar_odometry
  "/home/g/workspace/dlo-slam_noted/src/srv/save_pcd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/direct_lidar_odometry
)
_generate_srv_nodejs(direct_lidar_odometry
  "/home/g/workspace/dlo-slam_noted/src/srv/save_traj.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/direct_lidar_odometry
)

### Generating Module File
_generate_module_nodejs(direct_lidar_odometry
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/direct_lidar_odometry
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(direct_lidar_odometry_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(direct_lidar_odometry_generate_messages direct_lidar_odometry_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/g/workspace/dlo-slam_noted/src/srv/save_pcd.srv" NAME_WE)
add_dependencies(direct_lidar_odometry_generate_messages_nodejs _direct_lidar_odometry_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/g/workspace/dlo-slam_noted/src/srv/save_traj.srv" NAME_WE)
add_dependencies(direct_lidar_odometry_generate_messages_nodejs _direct_lidar_odometry_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(direct_lidar_odometry_gennodejs)
add_dependencies(direct_lidar_odometry_gennodejs direct_lidar_odometry_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS direct_lidar_odometry_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(direct_lidar_odometry
  "/home/g/workspace/dlo-slam_noted/src/srv/save_pcd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/direct_lidar_odometry
)
_generate_srv_py(direct_lidar_odometry
  "/home/g/workspace/dlo-slam_noted/src/srv/save_traj.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/direct_lidar_odometry
)

### Generating Module File
_generate_module_py(direct_lidar_odometry
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/direct_lidar_odometry
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(direct_lidar_odometry_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(direct_lidar_odometry_generate_messages direct_lidar_odometry_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/g/workspace/dlo-slam_noted/src/srv/save_pcd.srv" NAME_WE)
add_dependencies(direct_lidar_odometry_generate_messages_py _direct_lidar_odometry_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/g/workspace/dlo-slam_noted/src/srv/save_traj.srv" NAME_WE)
add_dependencies(direct_lidar_odometry_generate_messages_py _direct_lidar_odometry_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(direct_lidar_odometry_genpy)
add_dependencies(direct_lidar_odometry_genpy direct_lidar_odometry_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS direct_lidar_odometry_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/direct_lidar_odometry)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/direct_lidar_odometry
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/direct_lidar_odometry)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/direct_lidar_odometry
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/direct_lidar_odometry)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/direct_lidar_odometry
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/direct_lidar_odometry)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/direct_lidar_odometry
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/direct_lidar_odometry)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/direct_lidar_odometry\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/direct_lidar_odometry
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
