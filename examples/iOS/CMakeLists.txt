
# All source files
set(SRC main.cpp)

# Use the resources from the android example
set(RESOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/../android/assets/canary.wav
    ${CMAKE_CURRENT_SOURCE_DIR}/../android/assets/image.png
    ${CMAKE_CURRENT_SOURCE_DIR}/../android/assets/orchestral.ogg
    ${CMAKE_CURRENT_SOURCE_DIR}/../android/assets/sansation.ttf)

set_source_files_properties( ${RESOURCES} PROPERTIES
                              MACOSX_PACKAGE_LOCATION Resources )

# Define the iOSdemo target
sfml_add_example(iOSdemo GUI_APP
                 SOURCES ${SRC}
                 BUNDLE_RESOURCES ${RESOURCES}
                 DEPENDS sfml-graphics sfml-audio)
