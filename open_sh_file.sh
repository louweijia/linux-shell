#! /bin/sh
# 循环操作

# 在当前目录打开所有sh文件
for file in `find . -iname "*.sh"`
do
	gedit $file
done
