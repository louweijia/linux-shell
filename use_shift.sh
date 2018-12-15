#! /bin/sh
# 上面第一行用于选择使用哪个shell，“#!”之后为解释器的完整路径，
# 所以每个脚本的头都指定了一个不同的命令解释器

# shell收到命令行后，判断是否有权限执行，
# 有则，内核新建(fork)一个进程，再进程中调用输入的指令，发现是一个非编译型二进制文件，
# 内核返回“不可执行的文件类型”错误，shell收到这个信息后，确认为脚本文件，
# 再启动一个新的shell执行者个脚本文件
# source指令调用脚本文件时，不会创建新进程

# 位置变量shift示例

#echo $1
#shift
#echo $1
#shift
#echo $1
#shift
#echo $1
#shift
#if [ -z "$1" ]
#then 
#	echo '$1是空'
#else
#	echo "\$1非空，值为$1"
#fi

#if [ -n "$1" ]
#then 
#	echo '$1是空'
#else
#	echo "\$1非空，值为$1"
#fi


# 遍历所有参数
while [ ! -z "$1" ];
do
	echo $1
	shift
done
##

# 下面代码也可以遍历所有参数
until [ -z "$1" ];
do
	echo $1
	shift
done

# 下面代码也可以遍历所有参数
#for file in $*
#do 
#	echo $file
#done

