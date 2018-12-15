#! /bin/sh
# 上面第一行用于选择使用哪个shell，“#!”之后为解释器的完整路径，
# 所以每个脚本的头都指定了一个不同的命令解释器

# shell收到命令行后，判断是否有权限执行，
# 有则，内核新建(fork)一个进程，再进程中调用输入的指令，发现是一个非编译型二进制文件，
# 内核返回“不可执行的文件类型”错误，shell收到这个信息后，确认为脚本文件，
# 在启动一个新的shell执行者个脚本文件

#测试局部变量和全局变量

num=123
func1()
{
	num=321
	echo "func1中的全局num=$num"
}

func2()
{
	local num=456
	echo "func2中的本地num=$num"
}

echo $num
func1
echo $num
func2
echo $num

