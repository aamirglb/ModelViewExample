cmake_minimum_required(VERSION 3.1.0)

project(modelview VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt5 COMPONENTS Widgets Qml Quick REQUIRED)

include_directories(${Qt5Widgets_INCLUDE_DIRS} ${QtQml_INCLUDE_DIRS})
add_definitions(${Qt5Widgets_DEFINITIONS} ${QtQml_DEFINITIONS} ${${Qt5Quick_DEFINITIONS}})
qt5_add_resources(QT_RESOURCES qml.qrc)
# qt5_add_resources(RCC_SOURCES qml.qrc)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${Qt5Widgets_EXECUTABLE_COMPILE_FLAGS}")

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

if(CMAKE_VERSION VERSION_LESS "3.7.0")
    set(CMAKE_INCLUDE_CURRENT_DIR ON)
endif()

add_executable(modelview
    main.cpp
    dataentrymodel.cpp
    qrc_qml.cpp
)

target_link_libraries(modelview 
        Qt5::Widgets
        Qt5::Qml
        Qt5::Quick
)


# Interface between camera manager and camera driver Start recording stop recording functionality etc...