#! /bin/sh
# 替换字符操作

echo "100 {John Doe}" > replace_1.txt
echo "150 uncle wang" >> replace_1.txt
echo "200 Jason Smith" >> replace_1.txt
echo "100 {\$500.00}" > replace_2.txt
echo "200 \$3,000.00" >> replace_2.txt
echo "300 \$6,000.00" >> replace_2.txt
echo "查看replace_1.txt文件:" > replace_temp.txt
cat replace_1.txt >> replace_temp.txt
echo "查看replace_2.txt文件:" >> replace_temp.txt
cat replace_2.txt >> replace_temp.txt
echo "tr指令将replace_1.txt文件中所有字母变为大写：" >> replace_temp.txt
tr 'a-z' 'A-Z' < replace_1.txt >> replace_temp.txt
echo  >> replace_temp.txt

echo "tr指令将replace_1.txt文件中{}变为()：" >> replace_temp.txt
tr '{}' '()' < replace_1.txt >> replace_temp.txt
echo  >> replace_temp.txt

echo "tr指令将replace_2.txt文件中{}变为[]：" >> replace_temp.txt
tr '{}' '\[]' < replace_2.txt >> replace_temp.txt
echo  >> replace_temp.txt

echo "tr指令将replace_2.txt文件中300 \$6,000.00删除：" >> replace_temp.txt
tr '300 $6,000.00' '\0' < replace_2.txt >> replace_temp.txt
echo  >> replace_temp.txt

echo "tr指令将replace_2.txt文件中所有空字符删除-d：" >> replace_temp.txt
tr -d '\0' < replace_2.txt >> replace_temp.txt
echo  >> replace_temp.txt


