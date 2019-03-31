#! /bin/sh
# 上面第一行用于选择使用哪个shell，“#!”之后为解释器的完整路径，
# 所以每个脚本的头都指定了一个不同的命令解释器

# shell收到命令行后，判断是否有权限执行，
# 有则，内核新建(fork)一个进程，再进程中调用输入的指令，发现是一个非编译型二进制文件，
# 内核返回“不可执行的文件类型”错误，shell收到这个信息后，确认为脚本文件，
# 再启动一个新的shell执行者个脚本文件
# source指令调用脚本文件时，不会创建新进程

# 创建一个交换文件

ROOT_UID=0
E_WRONG_USER=1

FILE=/swap
BLOCKSIZE=1024
MINBLOCKS=40
SUCCESS=0

if [ "$UID" -ne "$ROOT_UID" ]
then
	echo;
	echo "必须要用root用户才能执行此($0)脚本";
	echo;
	exit $E_WRONG_USER;
fi

blocks=${1:-$MINBLOCKS}
#以下语句等价于上面的一句
#----------------------------------
#if [ -n "$1" ]
#then 
#	blocks=$1;
#else
#	blocks=$MINBLOCKS
#fi
#----------------------------------


if [ "$blocks" -lt $MINBLOCKS ]
then
	blocks=$MINBLOCKS
fi

echo "创建swap文件，大小为$blocks KB"
dd if=/dev/zero of=$FILE bs=$BLOCKSIZE count=$blocks 	#用0填充文件

mkswap $FILE $blocks	#将swap指定为交换文件(分区)
swapon $FILE		#激活交换分区

echo "Swap创建完成."
