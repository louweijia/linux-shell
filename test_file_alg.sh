#! /bin/sh
# 测试文件操作

file=$1
#echo $file

# 关于test表达式（[]）,表达式为True，返回0退出值；否则，返回非0值，为False.
# 返回1,表达式参数为False或丢失; 返回值>1，发生错误
#

#if test -d $file
if [ -d $file ]
then	
	echo " $file is a directory."
elif [ -f $file ]
then
	if [ -r $file ] && [ -w $file ] && [ -x $file ]
	then
		echo "You have read, write and execute permission on $file."
	else
		echo "$file is a file."
	fi
else	
	echo "$file is neither a file nor a directory."
fi

#echo $file
