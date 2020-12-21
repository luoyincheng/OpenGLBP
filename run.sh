#! /bin/sh

root_path=`pwd`
glad_path=${root_path}/glad.c
cat << EOF

(1) Hello Window
(2) Hello Triangle
(3) Shaders

EOF
read -p "select a demo from above to run to: " input
case $input in 

1) source_path=${root_path}/1_hello_window/src.cpp
   app_dir=${root_path}/1_hello_window
   g++ -o ${app_dir}/app ${source_path} ${glad_path} -lglfw3 -lm -lXrandr -lXi -lX11 -lpthread -ldl -lXinerama -lXcursor
   cd ${app_dir}
   ./app
   rm ${app_dir}/app;;

2) source_path=${root_path}/2_hello_triangle/src.cpp
   app_dir=${root_path}/2_hello_triangle
   g++ -o ${app_dir}/app ${source_path} ${glad_path} -lglfw3 -lm -lXrandr -lXi -lX11 -lpthread -ldl -lXinerama -lXcursor
   cd ${app_dir}
   ./app
   rm ${app_dir}/app;;

3) source_path=${root_path}/3_shaders/src.cpp
   app_dir=${root_path}/3_shaders
   g++ -o ${app_dir}/app ${source_path} ${glad_path} -lglfw3 -lm -lXrandr -lXi -lX11 -lpthread -ldl -lXinerama -lXcursor
   cd ${app_dir}
   ./app
   rm ${app_dir}/app;;
esac

# g++ -o ~/Desktop/projects/OpenGLBP/out ~/Desktop/projects/OpenGLBP/gears.c ~/Desktop/projects/OpenGLBP/glad.c -lglfw3 -lm -lXrandr -lXi -lX11 -lpthread -ldl -lXinerama -lXcursor