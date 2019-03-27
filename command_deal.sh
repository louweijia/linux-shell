#! /bin/sh
# 上面第一行用于选择使用哪个shell，“#!”之后为解释器的完整路径，
# 所以每个脚本的头都指定了一个不同的命令解释器

# shell收到命令行后，判断是否有权限执行，
# 有则，内核新建(fork)一个进程，再进程中调用输入的指令，发现是一个非编译型二进制文件，
# 内核返回“不可执行的文件类型”错误，shell收到这个信息后，确认为脚本文件，
# 再启动一个新的shell执行者个脚本文件
# source指令调用脚本文件时，不会创建新进程

# 处理命令行参数示例

author=false
list=false
file=""

# 遍历所有参数
while [ $# -gt 0 ];
do
	case $1 in
	-f)
		file=$2
		shift;;
	-l)
		list=true;;
	-a)
		author=true;;
	--)
		shift
		break;;
	-*)
		echo $0:$1: 不支持的选项;;
	*)
		break;;
	esac
	shift
done
##


