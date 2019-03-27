#! /bin/bash
# 上面第一行用于选择使用哪个shell，“#!”之后为解释器的完整路径，
# 所以每个脚本的头都指定了一个不同的命令解释器

# shell收到命令行后，判断是否有权限执行，
# 有则，内核新建(fork)一个进程，再进程中调用输入的指令，发现是一个非编译型二进制文件，
# 内核返回“不可执行的文件类型”错误，shell收到这个信息后，确认为脚本文件，
# 再启动一个新的shell执行者个脚本文件
# source指令调用脚本文件时，不会创建新进程

# 变量示例

# 该脚本运行时使用bash variable.sh 或 ./variable.sh 或 source variable.sh 
# 如果使用sh variable.sh 则let命令无法执行

echo "该脚本用于测试shell中变量"

a=2334
echo "a是整数，a = $a "
let "a=a+1"
echo "a自加1后，a还是整数，a = $a "
echo

b=${a/23/BB} 	#将23替换为BB

echo "a经过替换(23->BB)得到b,b是字符串，b = $b"
declare -i b	
echo "declare之后，b还是字符串，b = $b"
let "b += 1"
echo "b自加1后，b是整数，b = $b "
echo

c=BB34
echo "c是字符串，c = $c"
d=${c/BB/23}
echo "c经过替换(BB->23)得到d,d是整数，d = $d"
let "d += 1"
echo "d自加1后，d还是整数，d = $d "
echo

e=""
echo "e什么都没有，e为null,e = $e"
let "e += 1"
echo "e自加1后，e是整数，e = $e "
echo

echo "f没有声明，f = $f"
let "f += 1"
echo "f自加1后，f是整数，f = $f "
echo

echo "所以shell中的变量都是不区分类型的, 实际上所有变量都是字符串类型."

#exit 0	#如果用source运行该脚本，运行完后终端会退出





























