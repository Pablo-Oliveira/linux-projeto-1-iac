#!/bin/bash

echo ""
#echo "Relação atual de usuarios do sistema..."
#echo "-------------------------------------------------------------"
#cut -d : -f 1 /etc/passwd
#echo "-------------------------------------------------------------"
echo "-------------------------------------------------------------"
echo "Deletando usuarios e pastas da home do sistema..."
echo "-------------------------------------------------------------"
userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao
userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto
userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio
echo ""
echo "-------------------------------------------------------------"
echo "-------------------------------------------------------------"
#echo "Relação atualizada de usuarios do sistema..."
#echo "-------------------------------------------------------------"
#echo "-------------------------------------------------------------"
#cat /etc/passwd
#echo "-------------------------------------------------------------"



echo "Finalizado!!"
