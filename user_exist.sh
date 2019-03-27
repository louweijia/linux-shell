#! /bin/sh
# 判断用户是否存在

grep $1 /etc/passwd

# 关于test表达式（[]）,表达式为True，返回0退出值；否则，返回非0值，为False.
# 返回1,表达式参数为False或丢失; 返回值>1，发生错误
#if [ $? = "0" ]
if test $? = "0"
then	
	echo "user $1 exists."
else	
	echo "user $1 donot exists."
fi

