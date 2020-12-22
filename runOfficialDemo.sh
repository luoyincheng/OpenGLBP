#! /bin/sh

root_path=`pwd`
glad_path=${root_path}/common/glad.c
app_dir=${root_path}/app
source_dir=${root_path}/officialDemos
cat << EOF

(1) boing
(2) gears
(3) heightmap
(4) offscreen
(5) particles
(6) sharing
(7) simple
(8) splitview
(9) wave

EOF
read -p "select a demo from above to run to: " input
case $input in 
1) source_path=${source_dir}/boing.c;;
2) source_path=${source_dir}/gears.c;;
3) source_path=${source_dir}/heightmap.c;;
4) source_path=${source_dir}/offscreen.c;;
5) source_path=${source_dir}/particles.c;;
6) source_path=${source_dir}/sharing.c;;
7) source_path=${source_dir}/simple.c;;
8) source_path=${source_dir}/splitview.c;;
9) source_path=${source_dir}/wave.c;;
esac
   g++ -o ${root_path}/app ${source_path} ${glad_path} -lglfw3 -lm -lXrandr -lXi -lX11 -lpthread -ldl -lXinerama -lXcursor
   cd ${root_path}
   ./app
   rm ${root_path}/app
# g++ -o ~/Desktop/projects/OpenGLBP/out ~/Desktop/projects/OpenGLBP/gears.c ~/Desktop/projects/OpenGLBP/glad.c -lglfw3 -lm -lXrandr -lXi -lX11 -lpthread -ldl -lXinerama -lXcursor