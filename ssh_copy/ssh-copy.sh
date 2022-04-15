#!/bin/bash
#
IP="172.31.0.7
172.31.0.8
172.31.0.9
172.31.0.10
172.31.0.14"

for node in ${IP};do
  sshpass -p PASSWORD ssh-copy-id  ${node}  -o StrictHostKeyChecking=no
  if [ $? -eq 0 ];then
    echo -e "\033[46;31m ${node} 秘钥copy成功 \033[0m"
  else
     echo -e "\033[43;31m ${node} 秘钥copy失败 \033[0m"
  fi
done
