#! /bin/sh
# 文本去重操作

echo "查看temp2.txt文件:" > uniq_temp.txt
cat temp2.txt >> uniq_temp.txt
echo  >> uniq_temp.txt

echo "排序去重，忽略大小写-f、去除重复项(根据-k中的匹配字段去重)-u:" >> uniq_temp.txt
sort -k1.5,1.6 -f -u temp2.txt >> uniq_temp.txt
echo  >> uniq_temp.txt

echo "去重，使用uniq指令，其只能去除相邻行的重复数据，如下:" >> uniq_temp.txt
uniq temp2.txt >> uniq_temp.txt
echo  >> uniq_temp.txt

echo "先用sort排序然后使用uniq指令去重，显示重复次数-c，如下:" >> uniq_temp.txt
sort temp2.txt |uniq -c >> uniq_temp.txt
echo  >> uniq_temp.txt

echo "先用sort排序然后使用uniq指令去重，显示重复次数-c，只显示重复行-d，如下:" >> uniq_temp.txt
sort temp2.txt |uniq -cd >> uniq_temp.txt
echo  >> uniq_temp.txt

echo "先用sort排序然后使用uniq指令去重，只不显示重复行-u，如下:" >> uniq_temp.txt
sort temp2.txt |uniq -u >> uniq_temp.txt
echo  >> uniq_temp.txt
