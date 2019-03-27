#! /bin/bash
# 上面第一行用于选择使用哪个shell，“#!”之后为解释器的完整路径，
# 所以每个脚本的头都指定了一个不同的命令解释器

# shell收到命令行后，判断是否有权限执行，
# 有则，内核新建(fork)一个进程，再进程中调用输入的指令，发现是一个非编译型二进制文件，
# 内核返回“不可执行的文件类型”错误，shell收到这个信息后，确认为脚本文件，
# 再启动一个新的shell执行者个脚本文件
# source指令调用脚本文件时，不会创建新进程

# 拷贝文件到share

ROOT_NAME="root"
E_WRONG_USER=1

if [ "$LOGNAME" != "$ROOT_NAME" ] 
then
	echo; echo "必须要用root用户才能执行此($0)脚本"; echo
	exit $E_WRONG_USER
fi

if [ -n "$1" ]
then 
	SourcePath=$1;
else
	SourcePath=/home/louweijia/文档/
fi

if [ -n "$2" ]
then 
	DstPath=$2;
else
	DstPath=/media/sf_share/
fi

echo "源文件夹目录：$SourcePath" 
echo "目标文件夹目录：$DstPath" 

cp -rf $SourcePath $DstPath 

echo "拷贝的文件如下：" 
ls $SourcePath


