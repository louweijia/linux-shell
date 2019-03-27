#! /bin/sh
# 上面第一行用于选择使用哪个shell，“#!”之后为解释器的完整路径，
# 所以每个脚本的头都指定了一个不同的命令解释器

# shell收到命令行后，判断是否有权限执行，
# 有则，内核新建(fork)一个进程，再进程中调用输入的指令，发现是一个非编译型二进制文件，
# 内核返回“不可执行的文件类型”错误，shell收到这个信息后，确认为脚本文件，
# 在启动一个新的shell执行者个脚本文件

cd /tmp	
#该命令在父shell进程创建的子shell进程中执行，所以执行完这个脚本后，父shell进程工作目录未变
#若要该命令在父shell进程生效，使用“source echo.sh”执行脚本，而不是“sh echo.sh”或“./echo.sh”
#“source echo.sh”不会创建子进程，而是在父进程直接执行

echo "Hello shell"

