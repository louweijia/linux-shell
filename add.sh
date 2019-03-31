#! /bin/bash

# 数字相加

#函数定义如下

add()
{
	let "sum = $1+$2"
	return $sum
}

#上述函数定义可以删除括号，或者删除function关键字


