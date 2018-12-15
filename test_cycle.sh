#! /bin/sh
# 循环操作

# 在当前目录打开所有sh文件
#for file in `find . -iname "*.sh"`
#do
#	gedit $file
#done

# 舍弃in list 的含义是 in "$@", 即在参数列表中查找
for file 
do
	case $file in *.sh )
			echo "this is a shell file.";
			sh $file;;
		*.txt | *.py )
			echo "this is a text or python file."
			gedit $file;;		
		*)
			echo "Do't know how to read this file";;
	esac
done
