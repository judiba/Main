#BY: @judiba
#R3V1V3R VPS
#Data de criação: 22/04/2017
#Nome: MenuVPS00 - PackVPS 2.0"
clear
echo -e "\033[01;34mMenuVPS"
echo ""
echo -e "\033[01;36m       BY: @judiba                 
       R3V1V3R VPS                 
       Data de criação: 23/04/2017 
       ATUALIZAÇÃO DE SISTEMAS VPS
       Nome: PackVPS 2.0           \033[1;37m"
echo ""
read -p "De enter para continuar..."
clear

echo 'Este "script" atualiza a versão e sub-versão do sistema'
echo ""
echo -e "\033[1;31mATENÇÃO - Não troque de SISTEMA!!!\033[0m"
echo ""
echo -e "Escolha a mesma versão instalada na VPS\033[1;37m"
echo ""
VERSION=`lsb_release -sd | cut -c 8-`
echo Versao do seu sistema operacional: ${VERSION}

echo "" 
echo -e "\033[1;33m[1]\033[01;32m Ubuntu 14.X \033[0m"
echo -e "\033[1;33m[2]\033[01;32m Ubuntu 16.X \033[0m"
echo -e "\033[1;33m[3]\033[01;32m Debian 7.X  \033[0m"
echo -e "\033[1;33m[4]\033[01;32m Debian 8.X  \033[0m"
echo -e "\033[1;33m[5]\033[01;32m CentOS 6.X  \033[0m"
echo -e "\033[1;33m[6]\033[01;32m Sair        \033[1;34m"
echo ""

if [ "$numero" = "*" ]
then
clear
echo "Numero informado não encontrado..."
sleep 3
echo -e "Saindo...\033[1;37m"
exit 0
fi

read -p "Escolha o numero da sua opção: " numero

if [ "$numero" = "1" ]
then
clear
echo '-----Script By @judiba-----'
echo '--Ubuntu 14 para o Ubuntu 16--'
apt-get install update-manager-core
apt-get update -y 1>/dev/null 2>/dev/null
do-release-upgrade -d -y 1>/dev/null 2>/dev/null
wget -q https://raw.githubusercontent.com/judiba/Main/master/ubuntu16 -O /etc/apt/sources.list
cat /etc/debian_version
echo "Atualizando a VPS..."
echo "Aguarde... "
sleep 3
apt-get update -y 1>/dev/null 2>/dev/null
apt-get upgrade -y 1>/dev/null 2>/dev/null
apt-get dist-upgrade -y 1>/dev/null 2>/dev/null
apt-get autoremove -y 1>/dev/null 2>/dev/null
apt-get autoclean -y 1>/dev/null 2>/dev/null
cat /etc/debian_version
echo "O número acima mostra a versão atual do Ubuntu. É altamente recomendável que você reinicie o sistema."
read -p "Reiniciar sistema Agora? [ s/n ]: " ta
 if [ "$ta" = "s" ]
then
shutdown -r now 1>/dev/null 2>/dev/null
clear
echo "Aguarde reiniciando..."
exit 0
fi

if [ "$ta" = "n" ]
then
clear
echo " Sucesso... "
sleep 3
echo " Seu servidor foi Atualizado com sucesso! Lembre-se de reiniciar assim que possivel"
sleep 3
echo -e "Saindo...\033[1;37m"
sleep 2
exit 0
fi

fi
if [ "$numero" = "2" ]
then
clear
echo '-----Script By @judiba-----'
echo '------Para o Ubuntu 16-----'
cat /etc/debian_version
apt-get update -y 1>/dev/null 2>/dev/null
apt-get upgrade -y 1>/dev/null 2>/dev/null
wget -q https://raw.githubusercontent.com/judiba/Main/master/ubuntu16 -O /etc/apt/sources.list
echo "Atualizando a VPS..."
echo "Aguarde... "
sleep 3
apt-get update -y 1>/dev/null 2>/dev/null
apt-get upgrade -y 1>/dev/null 2>/dev/null
apt-get dist-upgrade -y 1>/dev/null 2>/dev/null
apt-get autoremove -y 1>/dev/null 2>/dev/null
apt-get autoclean -y 1>/dev/null 2>/dev/null
cat /etc/debian_version
echo "O número acima mostra a versão atual do Ubuntu. É altamente recomendável que você reinicie o sistema."
read -p "Reiniciar sistema Agora? [ s/n ]: " ta
 if [ "$ta" = "s" ]
then
shutdown -r 5 1>/dev/null 2>/dev/null
clear
echo "Aguarde reiniciando..."
exit 0
fi

if [ "$ta" = "n" ]
then
clear
echo " Sucesso... "
sleep 3
echo " Seu servidor foi Atualizado com sucesso! Lembre-se de reiniciar assim que possivel"
sleep 3
echo -e "Saindo...\033[1;37m"
sleep 2
exit 0
fi

fi
if [ "$numero" = "3" ]
then
clear
echo '-----Script By @judiba-----'
echo '-----Debian 7 para Debian 8'
cat /etc/debian_version
echo "Substituindo os repositorios..."
apt-get update -y 1>/dev/null 2>/dev/null
apt-get upgrade -y 1>/dev/null 2>/dev/null
wget -q https://raw.githubusercontent.com/judiba/Main/master/debian8 -O /etc/apt/sources.list
echo "Atualizando a VPS..."
echo "Aguarde... "
sleep 3
apt-get update -y 1>/dev/null 2>/dev/null
apt-get upgrade -y 1>/dev/null 2>/dev/null
apt-get dist-upgrade -y 1>/dev/null 2>/dev/null
apt-get autoremove -y 1>/dev/null 2>/dev/null
apt-get autoclean -y 1>/dev/null 2>/dev/null
cat /etc/debian_version
echo "O número acima mostra a versão atual do Debian. É altamente recomendável que você reinicie o sistema."
read -p "Reiniciar sistema Agora? [ s/n ]: " ta
if [ "$ta" = "s" ]
then
shutdown -r 5 1>/dev/null 2>/dev/null
clear
echo "Aguarde reiniciando..."
exit 0
fi

if [ "$ta" = "n" ]
then
clear
echo " Sucesso... "
sleep 3
echo " Seu servidor foi Atualizado com sucesso! Lembre-se de reiniciar assim que possivel"
sleep 3
echo -e "Saindo...\033[1;37m"
sleep 2
exit 0
fi

fi
if [ "$numero" = "4" ]
then
clear
echo "-----Script By @judiba-----"
echo "------Para o Debian 8.X------"
echo "Versão instalada"
cat /etc/debian_version
echo "Atualizando os repositorios..."
apt-get update -y 1>/dev/null 2>/dev/null
apt-get upgrade -y 1>/dev/null 2>/dev/null
echo "Substituindo os repositorios..."
sleep 3
wget -q https://raw.githubusercontent.com/judiba/Main/master/debian8 -O /etc/apt/sources.list
echo "Atualizando a VPS..."
echo ""
sleep 3
echo "Aguarde... "
sleep 3
apt-get update -y 1>/dev/null 2>/dev/null
apt-get upgrade -y 1>/dev/null 2>/dev/null
apt-get dist-upgrade -y 1>/dev/null 2>/dev/null
apt-get autoremove -y 1>/dev/null 2>/dev/null
apt-get autoclean -y 1>/dev/null 2>/dev/null
echo "Versão Atualizada"
cat /etc/debian_version
echo "É altamente recomendável que você reinicie o sistema."
read -p "Reiniciar sistema Agora? [ s/n ]: " ta
if [ "$ta" = "s" ]
then
shutdown -r now 1>/dev/null 2>/dev/null
clear
echo "Aguarde reiniciando..."
exit 0
fi

if [ "$ta" = "n" ]
then
echo "Sucesso... "
sleep 3
echo "Seu servidor foi Atualizado com sucesso! Lembre-se de reiniciar assim que possivel"
clear
sleep 3
echo -e "Saindo...\033[1;37m"
clear
exit 0
fi

fi
if [ "$numero" = "5" ]
then
clear
echo '-----Script By @judiba-----'
echo '------Para o CentOS 6.8------'
apt-get update -y 1>/dev/null 2>/dev/null
apt-get upgrade -y 1>/dev/null 2>/dev/null
wget -q https://raw.githubusercontent.com/judiba/Main/master/centos6 -O /etc/apt/sources.list
echo "Atualizando a VPS..."
echo "Aguarde... "
sleep 3
apt-get update -y 1>/dev/null 2>/dev/null
apt-get upgrade -y 1>/dev/null 2>/dev/null
apt-get dist-upgrade -y 1>/dev/null 2>/dev/null
apt-get autoremove -y 1>/dev/null 2>/dev/null
apt-get autoclean -y 1>/dev/null 2>/dev/null
cat /proc/version
echo "O número acima mostra a versão atual do CentOS. É altamente recomendável que você reinicie o sistema."
read -p "Reiniciar sistema Agora? [ s/n ]: " ta
if [ "$ta" = "s" ]
then
shutdown -r 5 1>/dev/null 2>/dev/null
clear
echo "Aguarde reiniciando..."
exit 0
fi

if [ "$ta" = "n" ]
then
clear
echo "Sucesso... "
sleep 3
echo " Seu servidor foi Atualizado com sucesso! Lembre-se de reiniciar assim que possivel"
sleep 3
echo -e "Saindo...\033[1;37m"
sleep 3
clear
exit 0
fi

fi
if [ "$numero" = "6" ]
then
clear
echo -e "Saindo...\033[1;37m"
sleep 3
clear
exit 0
fi
