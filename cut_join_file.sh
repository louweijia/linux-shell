#! /bin/sh
# 剪切和连接文件操作

echo "查看/etc/passwd文件:" > cut_temp.txt
cat /etc/passwd >> cut_temp.txt
echo  >> cut_temp.txt

echo "cut提取/etc/passwd文件中第1,6,7列字段，分隔符-d指定，在搜索bash:" >> cut_temp.txt
cut -d ':' -f 1,6,7 /etc/passwd | grep bash >> cut_temp.txt
echo  >> cut_temp.txt

echo "cut提取/etc/passwd文件中第1-50个字符，在搜索louweijia:" >> cut_temp.txt
cut -c 1-50 /etc/passwd | grep louweijia >> cut_temp.txt
echo  >> cut_temp.txt


echo "100 John Doe" > cut_1.txt
echo "150 uncle wang" >> cut_1.txt
echo "200 Jason Smith" >> cut_1.txt
echo "100 \$500.00" > cut_2.txt
echo "200 \$3,000.00" >> cut_2.txt
echo "300 \$6,000.00" >> cut_2.txt
echo "查看cut_1.txt文件:" >> cut_temp.txt
cat cut_1.txt >> cut_temp.txt
echo "查看cut_2.txt文件:" >> cut_temp.txt
cat cut_2.txt >> cut_temp.txt
echo "join将相同key值得记录(行)连在一起。" >> cut_temp.txt
join cut_1.txt cut_2.txt >> cut_temp.txt
echo  >> cut_temp.txt

echo "join将显示指定文件的key值得记录(行)-a，1指前面的文件，2指后面的文件；指定默认字符串代替空输出字段-e。" >> cut_temp.txt
join cut_1.txt cut_2.txt -e "\$0.0" -a1 >> cut_temp.txt
echo  >> cut_temp.txt


