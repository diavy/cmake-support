
message(STATUS "ClibMacros.cmake")

# Set up a test
MACRO(TEST_CLIB)
ENDMACRO(TEST_CLIB)

MACRO(BUILD_CLIB directory)
  IF(NOT _directory)
    SET(_directory ../build)
  ENDIF()
  SET(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${_directory})
  SET(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${_directory})
  SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${_directory})
  SET(_directory undefined)
ENDMACRO(BUILD_CLIB)

# Installation location for the Ruby module
MACRO(INSTALL_CLIB)

  INSTALL(TARGETS ${M_MODULE} 
    LIBRARY DESTINATION ${RUBY_LIB_PATH}/${MAP_projectname}
    ARCHIVE DESTINATION ${RUBY_LIB_PATH}/${MAP_projectname}
    RUNTIME DESTINATION bin )

ENDMACRO(INSTALL_CLIB)