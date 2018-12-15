#! /bin/sh
# 上面第一行用于选择使用哪个shell，“#!”之后为解释器的完整路径，
# 所以每个脚本的头都指定了一个不同的命令解释器

# shell收到命令行后，判断是否有权限执行，
# 有则，内核新建(fork)一个进程，再进程中调用输入的指令，发现是一个非编译型二进制文件，
# 内核返回“不可执行的文件类型”错误，shell收到这个信息后，确认为脚本文件，
# 再启动一个新的shell执行者个脚本文件
# source指令调用脚本文件时，不会创建新进程

# 演示/dev/null的应用

cat ./b.txt > /dev/null

# "2>"指输出错误信息到标准错误
grep "prince" /etc/* 2> /dev/null

# b.txt若存在，则将内容输出到/dev/null，终端不显示
# b.txt若不存在，则将错误信息输出到/dev/null，终端显示
cat ./b.txt > /dev/null 2> /dev/null
# 功能同上，会将内容输出到终端，但使用source指令调用脚本文件时，什么都不输出
cat ./b.txt &> /dev/null

# 清空message和wtmp文件，并且不删除文件，但需要提供文件的操作权限
#cat /dev/null > /var/log/message
#cat /dev/null > /var/log/wtmp
