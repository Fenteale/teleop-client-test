
SET(RCL_DIR ${CMAKE_SOURCE_DIR}/rcl/rcl)

SET(RCL_SOURCES 
    ${RCL_DIR}/src/rcl/arguments.c
    ${RCL_DIR}/src/rcl/client.c
    ${RCL_DIR}/src/rcl/common.c
    ${RCL_DIR}/src/rcl/context.c
    ${RCL_DIR}/src/rcl/domain_id.c
    ${RCL_DIR}/src/rcl/event.c
    ${RCL_DIR}/src/rcl/expand_topic_name.c
    ${RCL_DIR}/src/rcl/graph.c
    ${RCL_DIR}/src/rcl/guard_condition.c
    ${RCL_DIR}/src/rcl/init.c
    ${RCL_DIR}/src/rcl/init_options.c
    ${RCL_DIR}/src/rcl/lexer.c
    ${RCL_DIR}/src/rcl/lexer_lookahead.c
    ${RCL_DIR}/src/rcl/localhost.c
    ${RCL_DIR}/src/rcl/logging_rosout.c
    ${RCL_DIR}/src/rcl/logging.c
    ${RCL_DIR}/src/rcl/log_level.c
    ${RCL_DIR}/src/rcl/network_flow_endpoints.c
    ${RCL_DIR}/src/rcl/node.c
    ${RCL_DIR}/src/rcl/node_options.c
    ${RCL_DIR}/src/rcl/publisher.c
    ${RCL_DIR}/src/rcl/remap.c
    ${RCL_DIR}/src/rcl/node_resolve_name.c
    ${RCL_DIR}/src/rcl/rmw_implementation_identifier_check.c
    ${RCL_DIR}/src/rcl/security.c
    ${RCL_DIR}/src/rcl/service.c
    ${RCL_DIR}/src/rcl/subscription.c
    ${RCL_DIR}/src/rcl/time.c
    ${RCL_DIR}/src/rcl/timer.c
    ${RCL_DIR}/src/rcl/validate_enclave_name.c
    ${RCL_DIR}/src/rcl/validate_topic_name.c
    ${RCL_DIR}/src/rcl/wait.c
)


add_library(rcl ${RCL_SOURCES})

target_include_directories(rcl PUBLIC ${RCUTILS_DIR}/include)
target_include_directories(rcl PUBLIC ${RCL_DIR}/include)