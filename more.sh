#!/bin/more

louweijia@louweijia-VirtualBox:~$ gedit
louweijia@louweijia-VirtualBox:~$ cd 文档/
louweijia@louweijia-VirtualBox:~/文档$ ls
echo.sh
louweijia@louweijia-VirtualBox:~/文档$ sh echo.sh
Hello shell
louweijia@louweijia-VirtualBox:~/文档$ echo.sh
echo.sh：未找到命令
louweijia@louweijia-VirtualBox:~/文档$ ./echo.sh
bash: ./echo.sh: 权限不够
louweijia@louweijia-VirtualBox:~/文档$ chmod +x echo.sh
louweijia@louweijia-VirtualBox:~/文档$ ./echo.sh
Hello shell
louweijia@louweijia-VirtualBox:~/文档$ 


