cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(example-app)

find_package(Torch REQUIRED)
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${TORCH_CXX_FLAGS}")

add_executable(example-app example-app.cpp)
target_link_libraries(example-app "${TORCH_LIBRARIES}")
#set_property(TARGET example-app PROPERTY CXX_STANDARD 14)

add_executable(mnist mnist.cpp)
target_link_libraries(mnist "${TORCH_LIBRARIES}")
#set_property(TARGET mnist PROPERTY CXX_STANDARD 14)
