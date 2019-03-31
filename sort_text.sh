#! /bin/sh
# 文本排序操作

echo "查看/etc/group文件:" > sort_temp.txt
cat /etc/group >> sort_temp.txt
echo  >> sort_temp.txt

echo "将/etc/group文件，按照第三个字段、整数排序，以:(默认空格)为分界符:" >> sort_temp.txt
sort -t: -k3 -n /etc/group >> sort_temp.txt
echo  >> sort_temp.txt

echo "查看temp.txt文件:" >> sort_temp.txt
cat temp.txt >> sort_temp.txt
echo  >> sort_temp.txt

echo "排序，设置LANG=En_US，使sort按照ASCII顺序排序:" >> sort_temp.txt
LANG=En_US 
sort temp.txt >> sort_temp.txt
echo "发现sort并不是稳定的排序，但GUN的coreutils包中sort能够保证稳定，需要--stable保证稳定性，但这会降低效率。">> sort_temp.txt
echo  >> sort_temp.txt

echo "排序，按照第一个字段的第2、3个字符排序:" >> sort_temp.txt
sort --stable -k1.2,1.3 temp.txt >> sort_temp.txt
echo  >> sort_temp.txt

echo "排序，忽略特殊字符(字典序：只比较字母、数字和空格)-d、大小写-f:" >> sort_temp.txt
sort --stable -d -f -u temp.txt >> sort_temp.txt
echo  >> sort_temp.txt

echo "排序，忽略大小写-f、去除重复项(根据-k中的匹配字段去重)-u:" >> sort_temp.txt
sort -k1.5,1.6 -f -u temp.txt >> sort_temp.txt
echo  >> sort_temp.txt
