#! /bin/sh
# 文本统计操作

echo "你好，我是louweijia:" > statis_temp.txt
printf "上一行统计结果如下：" >> statis_temp.txt
echo "你好，我是louweijia:" | wc -lwc >> statis_temp.txt
echo  >> statis_temp.txt

echo "查看temp2.txt文件:" >> statis_temp.txt
cat temp2.txt >> statis_temp.txt
echo  >> statis_temp.txt

echo "wc统计temp2.txt文件的行数-l、单词数(以空格为分隔符)-w、字符数-c:" >> statis_temp.txt
wc -lwc temp2.txt >> statis_temp.txt
echo  >> statis_temp.txt

printf "找出/etc文件夹下conf文件的个数:" >> statis_temp.txt
find /etc -iname "*.conf" | wc -l >> statis_temp.txt
echo  >> statis_temp.txt

printf "找出/etc/passwd文件中包含bash字符串的行数：" >> statis_temp.txt
grep bash /etc/passwd | wc -l >> statis_temp.txt
echo  >> statis_temp.txt

echo "统计用户文件夹下/文档中所有sh文件的数据：" >> statis_temp.txt
wc /home/louweijia/文档/*.sh >> statis_temp.txt
echo  >> statis_temp.txt

