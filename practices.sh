#! /bin/sh

root_path=`pwd`
glad_path=${root_path}/common/glad.c
app_dir=${root_path}/app
cat << EOF

(1) Hello Window
(2) Hello Triangle
(3) Shaders

EOF
read -p "select a demo from above to run to: " input
case $input in 

1) source_path=${root_path}/learningOpenGL/1_hello_window/src.cpp;;
2) source_path=${root_path}/learningOpenGL/2_hello_triangle/src.cpp;;
3) source_path=${root_path}/learningOpenGL/3_shaders/src.cpp;;
esac

cat << EOF

(1) src
(2) app

EOF
read -p "view src or run app: " input
case $input in 

1) subl ${source_path};;
2) g++ -o ${root_path}/app ${source_path} ${glad_path} -lglfw3 -lm -lXrandr -lXi -lX11 -lpthread -ldl -lXinerama -lXcursor
   cd ${root_path}
   ./app
   rm ${root_path}/app;;

esac
# g++ -o ~/Desktop/projects/OpenGLBP/out ~/Desktop/projects/OpenGLBP/gears.c ~/Desktop/projects/OpenGLBP/glad.c -lglfw3 -lm -lXrandr -lXi -lX11 -lpthread -ldl -lXinerama -lXcursor