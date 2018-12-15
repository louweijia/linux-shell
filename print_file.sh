#! /bin/sh
# 打印文件操作

echo "查看temp2.txt文件:" > print_temp.txt
cat temp2.txt >> print_temp.txt
echo  >> print_temp.txt

echo "pr打印temp2.txt文件到print.outfile文件:" >> print_temp.txt
echo "添加标题-h（-t可以不显示标题）、分栏-cxx(或-xx xx表示具体分栏数)、设置每页的行数(默认66)-l." >> print_temp.txt
pr -h "测试文档打印" -c6 -l 15 temp2.txt >> print_temp.txt
echo  >> print_temp.txt


