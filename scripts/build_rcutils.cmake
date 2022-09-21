
SET(RCUTILS_DIR ${CMAKE_SOURCE_DIR}/rcutils)

if(WIN32)
  set(time_impl_c src/time_win32.c)
else()
  set(time_impl_c src/time_unix.c)
endif()

set(RCUTILS_SOURCES 
  ${RCUTILS_DIR}/src/allocator.c
  ${RCUTILS_DIR}/src/array_list.c
  ${RCUTILS_DIR}/src/char_array.c
  ${RCUTILS_DIR}/src/cmdline_parser.c
  ${RCUTILS_DIR}/src/env.c
  ${RCUTILS_DIR}/src/error_handling.c
  ${RCUTILS_DIR}/src/filesystem.c
  ${RCUTILS_DIR}/src/find.c
  ${RCUTILS_DIR}/src/format_string.c
  ${RCUTILS_DIR}/src/hash_map.c
  ${RCUTILS_DIR}/src/logging.c
  ${RCUTILS_DIR}/src/process.c
  ${RCUTILS_DIR}/src/qsort.c
  ${RCUTILS_DIR}/src/repl_str.c
  ${RCUTILS_DIR}/src/shared_library.c
  ${RCUTILS_DIR}/src/snprintf.c
  ${RCUTILS_DIR}/src/split.c
  ${RCUTILS_DIR}/src/strcasecmp.c
  ${RCUTILS_DIR}/src/strdup.c
  ${RCUTILS_DIR}/src/strerror.c
  ${RCUTILS_DIR}/src/string_array.c
  ${RCUTILS_DIR}/src/string_map.c
  ${RCUTILS_DIR}/src/testing/fault_injection.c
  ${RCUTILS_DIR}/src/time.c
  ${RCUTILS_DIR}/${time_impl_c}
  ${RCUTILS_DIR}/src/uint8_array.c
)

add_library(rcutils ${RCUTILS_SOURCES})

target_compile_definitions(rcutils PUBLIC _GNU_SOURCE)

include_directories(${RCUTILS_DIR}/include)
include_directories(${CMAKE_SOURCE_DIR}/rcpatches/include)

#target_include_directories(rcutils PUBLIC ${RCUTILS_DIR}/include)
#target_include_directories(rcutils PUBLIC ${CMAKE_SOURCE_DIR}/rcpatches/include)