
SET(ROSIDL_DIR ${CMAKE_SOURCE_DIR}/rosidl/rosidl_runtime_c)

SET(ROSIDL_SOURCES
    "${ROSIDL_DIR}/src/message_type_support.c"
    "${ROSIDL_DIR}/src/primitives_sequence_functions.c"
    "${ROSIDL_DIR}/src/sequence_bound.c"
    "${ROSIDL_DIR}/src/service_type_support.c"
    "${ROSIDL_DIR}/src/string_functions.c"
    "${ROSIDL_DIR}/src/u16string_functions.c"
)

add_library(rosidl ${ROSIDL_SOURCES})

#target_include_directories(rmw PUBLIC ${RMW_DIR}/include)
include_directories(${ROSIDL_DIR}/include)