#! /bin/bash

# 用于判断用户是否登录

#函数定义如下
#function user_login()		#此时sh运行会报错  Syntax error: "(" unexpected
user_login()							#bash sh 均能运行
#function user_login				#此时sh运行会报错 function: not found; user_login: not found
{
	if who | grep $1 >/dev/null
	then 
		echo "User $1 is on."
	else 
		echo "User $1 is off."
	fi
	return 0
} 
add()
{
	let "sum = $1+$2"
	return $sum
}

#调用函数
user_login $1

#上述函数定义可以删除括号，或者删除function关键字


