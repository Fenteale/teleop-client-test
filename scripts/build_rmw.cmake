
SET(RMW_DIR ${CMAKE_SOURCE_DIR}/rmw/rmw)

SET(RMW_SOURCES
    "${RMW_DIR}/src/allocators.c"
    "${RMW_DIR}/src/convert_rcutils_ret_to_rmw_ret.c"
    "${RMW_DIR}/src/event.c"
    "${RMW_DIR}/src/init.c"
    "${RMW_DIR}/src/init_options.c"
    "${RMW_DIR}/src/message_sequence.c"
    "${RMW_DIR}/src/names_and_types.c"
    "${RMW_DIR}/src/network_flow_endpoint_array.c"
    "${RMW_DIR}/src/network_flow_endpoint.c"
    "${RMW_DIR}/src/publisher_options.c"
    "${RMW_DIR}/src/qos_string_conversions.c"
    "${RMW_DIR}/src/sanity_checks.c"
    "${RMW_DIR}/src/security_options.c"
    "${RMW_DIR}/src/subscription_content_filter_options.c"
    "${RMW_DIR}/src/subscription_options.c"
    "${RMW_DIR}/src/time.c"
    "${RMW_DIR}/src/topic_endpoint_info_array.c"
    "${RMW_DIR}/src/topic_endpoint_info.c"
    "${RMW_DIR}/src/types.c"
    "${RMW_DIR}/src/validate_full_topic_name.c"
    "${RMW_DIR}/src/validate_namespace.c"
    "${RMW_DIR}/src/validate_node_name.c"
)

add_library(rmw ${RMW_SOURCES})

#target_include_directories(rmw PUBLIC ${RMW_DIR}/include)
include_directories(${RMW_DIR}/include)