
cmake_minimum_required(VERSION 3.5.1)
project(LEProject)

set(CMAKE_CXX_STANDARD 11)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")
set(CMAKE_POSITION_INDEPENDENT_CODE OFF)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -no-pie")

set (SHORT_PATH_INCL /opt/Leadwerks/Include)
set (SHORT_PATH_LINK /opt/Leadwerks/Library)

add_definitions(-D__STEAM__=Y)
add_definitions(-DOS_OPENBSD=Y)

include_directories(${SHORT_PATH_INCL})

include_directories("${SHORT_PATH_INCL}/Libraries/")
include_directories("${SHORT_PATH_INCL}/Libraries/LuaJIT/src/")
include_directories("${SHORT_PATH_INCL}/Libraries/LuaJIT-2.0.5/src/")
include_directories("${SHORT_PATH_INCL}/Libraries/b3d")
include_directories("${SHORT_PATH_INCL}/Libraries/curl/include")
include_directories("${SHORT_PATH_INCL}/Libraries/enet-1.3.1/include")
include_directories("${SHORT_PATH_INCL}/Libraries/freetype-2.4.7/include")
include_directories("${SHORT_PATH_INCL}/Libraries/zlib-1.2.5/contrib/minizip")
include_directories("${SHORT_PATH_INCL}/Libraries/zlib-1.2.5")
include_directories("${SHORT_PATH_INCL}/Libraries/LuaJIT/src")
include_directories("${SHORT_PATH_INCL}/Libraries/tolua++-1.0.93/include")
include_directories("${SHORT_PATH_INCL}/Libraries/freetype-2.4.7/include")
include_directories("${SHORT_PATH_INCL}/Libraries/OpenAL/include")
include_directories("${SHORT_PATH_INCL}/Libraries/openal-soft/include")
include_directories(${SHORT_PATH_INCL}/Libraries/glew-1.6.0/include)
include_directories("${SHORT_PATH_INCL}/Libraries/steamworks/public/steam")
include_directories("${SHORT_PATH_INCL}/Libraries/glslang")
include_directories("${SHORT_PATH_INCL}/Libraries/sol2")
include_directories("${SHORT_PATH_INCL}/Libraries/nvapi")
include_directories("${SHORT_PATH_INCL}/Libraries/tinygltfloader/trunk")

include_directories("${SHORT_PATH_INCL}/Libraries/VHACD/src/VHACD_Lib/inc")
include_directories("${SHORT_PATH_INCL}/Libraries/RecastNavigation/Recast/Include")
include_directories("${SHORT_PATH_INCL}/Libraries/RecastNavigation/DebugUtils/Include")
include_directories("${SHORT_PATH_INCL}/Libraries/RecastNavigation/Detour/Include")
include_directories("${SHORT_PATH_INCL}/Libraries/RecastNavigation/DetourCrowd/Include")
include_directories("${SHORT_PATH_INCL}/Libraries/RecastNavigation/Detour/Include")
include_directories("${SHORT_PATH_INCL}/Libraries/RecastNavigation/DetourTileCache/Include")
include_directories("${SHORT_PATH_INCL}/Libraries/openssl/include")
include_directories("${SHORT_PATH_INCL}/Libraries/libogg/include")


include_directories("${SHORT_PATH_INCL}/Libraries/NewtonDynamics/sdk/dMath")
include_directories("${SHORT_PATH_INCL}/Libraries/NewtonDynamics/sdk/dgNewton")
include_directories("${SHORT_PATH_INCL}/Libraries/NewtonDynamics/sdk/dContainers")
include_directories("${SHORT_PATH_INCL}/Libraries/NewtonDynamics/sdk/dgCore")
include_directories("${SHORT_PATH_INCL}/Libraries/NewtonDynamics/sdk/dgTimeTracker")
include_directories("${SHORT_PATH_INCL}/Libraries/NewtonDynamics/sdk/dgPhysics")
include_directories("${SHORT_PATH_INCL}/Libraries/NewtonDynamics/sdk/dCustomJoints")



include_directories(${SHORT_PATH_INCL}/Classes)
include_directories("${SHORT_PATH_INCL}/Classes/Drivers/Graphics")
include_directories("${SHORT_PATH_INCL}/Classes/Drivers/Network")
include_directories("${SHORT_PATH_INCL}/Classes/Drivers/Physics")
include_directories("${SHORT_PATH_INCL}/Classes/Drivers/Sound")
include_directories("${SHORT_PATH_INCL}/Classes/Entities")
include_directories("${SHORT_PATH_INCL}/Classes/Entities/Light")
include_directories("${SHORT_PATH_INCL}/Classes/Entities/Primitives")
include_directories("${SHORT_PATH_INCL}/Classes/GUI")
include_directories("${SHORT_PATH_INCL}/Classes/Math")

add_executable(LEDocker
        Source/main.cpp)


link_directories(${SHORT_PATH_LINK}/Linux/)
link_directories(${SHORT_PATH_LINK}/Debug/)

target_link_libraries(LEDocker
        m
        "${SHORT_PATH_LINK}/Linux/Debug/Leadwerks.a"
        dl
        openal
        GL
        GLU
        "${SHORT_PATH_LINK}/Linux/libluajit.a"
        "${SHORT_PATH_LINK}/Linux/libsteam_api.so"
        X11
        Xext
        Xrender
        Xft
        pthread
        curl
        ssl
        crypto
        "/lib/x86_64-linux-gnu/libudev.so"
        "/lib/x86_64-linux-gnu/libgcrypt.so.20"
        "${SHORT_PATH_LINK}/Linux/libopenvr_api.so")

set_target_properties(LEDocker PROPERTIES DEBUG_POSTFIX "_debug.bin")

set_target_properties(LEDocker PROPERTIES DEBUG_PREFIX "./")
#set_target_properties(LEDocker PROPERTIES COMPILE_FLAGS "-m32" )

set(EXECUTABLE_OUTPUT_PATH "./")
