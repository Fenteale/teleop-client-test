
SET(RCLC_DIR ../rclc/rclc)

SET(SOURCES 
    ${RCLC_DIR}/src/rclc/action_client.c
    ${RCLC_DIR}/src/rclc/action_goal_handle.c
    ${RCLC_DIR}/src/rclc/action_server.c
    ${RCLC_DIR}/src/rclc/client.c
    ${RCLC_DIR}/src/rclc/executor_handle.c
    ${RCLC_DIR}/src/rclc/executor.c
    ${RCLC_DIR}/src/rclc/init.c
    ${RCLC_DIR}/src/rclc/node.c
    ${RCLC_DIR}/src/rclc/publisher.c
    ${RCLC_DIR}/src/rclc/rcl_wait_set_is_valid_backport.c
    ${RCLC_DIR}/src/rclc/service.c
    ${RCLC_DIR}/src/rclc/sleep.c
    ${RCLC_DIR}/src/rclc/subscription.c
    ${RCLC_DIR}/src/rclc/timer.c
)

add_library(rclc ${SOURCES})

target_include_directories(rclc PUBLIC ${RCLC_DIR}/include)