#! /bin/sh

root_path=`pwd`
glad_path=${root_path}/glad.c
cat << EOF

(1) Hello Window
(2) Hello Triangle
(3) project dir

EOF
read -p "select a demo from above to run to: " input
case $input in 

1) source_path=${root_path}/1_hello_window/src.cpp
   app_dir=${root_path}/1_hello_window
   g++ -o ${app_dir}/app ${source_path} ${glad_path} -lglfw3 -lm -lXrandr -lXi -lX11 -lpthread -ldl -lXinerama -lXcursor
   cd ${app_dir}
   ./app
   rm ${app_dir}/app;;

2) echo "Enter target directory:"
read dir
cd $dir;;
3) echo "Enter a file name:"
read file
touch $file;;
4) echo "Enter a file name:"
read file
vi $file;;
5) echo "Enter a file nmae:"
read file
rm $file;;
esac