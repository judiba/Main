#BY: @judiba
#R3V1V3R VPS
#Data de criação: 30/04/2017
#Nome: ConfVPS14 - PackVPS 2.0"
clear
echo -e "\033[01;34mConfVPS14"
echo ""
echo -e "\033[01;36m       BY: @judiba                 
       R3V1V3R VPS                 
       Data de Atualização: 18/05/2017 
       VPS Manager 3.0
       Nome: PackVPS 2.0           \033[1;37m"
echo ""
read -p "De enter para continuar..."
clear
tput setaf 8 ; tput setab 5 ; tput bold ; printf '%30s%s%-15s\n' "VPS Manager 3.0" ; tput sgr0

tput setaf 2 ; tput bold ; echo "" ; echo "Este script para uso do VPS Manager APK:" ; 
echo "Modificado by:@judiba"
echo ""
tput setaf 3 ; tput bold ; read -n 1 -s -p "Aperte qualquer tecla para continuar..." ; echo "" ; echo "" ; tput sgr0
if [ -f "/root/usuarios.db" ]
then
tput setaf 6 ; tput bold ;	echo ""
	echo "Uma base de dados de usuários ('usuarios.db') foi encontrada!"
	echo "Deseja mantê-la (preservando o limite de conexões simultâneas dos usuários)"
	echo "ou criar uma nova base de dados?"
	tput setaf 6 ; tput bold ;	echo ""
	echo "[1] Manter Base de Dados Atual"
	echo "[2] Criar uma Nova Base de Dados"
	echo "" ; tput sgr0
	read -p "Opção?: " -e -i 1 optiondb
else
	awk -F : '$3 >= 500 { print $1 " 1" }' /etc/passwd | grep -v '^nobody' > /root/usuarios.db
fi
echo ""
tput setaf 8 ; tput setab 5 ; tput bold ; echo "" ; echo "Aguarde a configuração automática" ; echo "" ; tput sgr0
sleep 3
apt-get update -y
apt-get upgrade -y
rm /bin/criarusuario /bin/expcleaner /bin/sshlimiter /bin/addhost /bin/listar /bin/sshmonitor /bin/ajuda > /dev/null
rm /root/ExpCleaner.sh /root/CriarUsuario.sh /root/sshlimiter.sh > /dev/null
apt-get install squid3 bc screen nano unzip dos2unix wget -y

if [ -f "/usr/sbin/ufw" ] ; then
	ufw allow 443/tcp ; ufw allow 80/tcp ; ufw allow 3128/tcp ; ufw allow 8799/tcp ; ufw allow 8080/tcp
fi
if [ -d "/etc/squid3/" ]
then
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/addhost.sh -O /bin/addhost
	chmod +x /bin/addhost
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/alterarsenha.sh -O /bin/alterarsenha
	chmod +x /bin/alterarsenha
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/criarusuario2.sh -O /bin/criarusuario
	chmod +x /bin/criarusuario
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/delhost.sh -O /bin/delhost
	chmod +x /bin/delhost
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/expcleaner2.sh -O /bin/expcleaner
	chmod +x /bin/expcleaner
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/mudardata.sh -O /bin/mudardata
	chmod +x /bin/mudardata
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/remover.sh -O /bin/remover
	chmod +x /bin/remover
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/sshlimiter2.sh -O /bin/sshlimiter
	chmod +x /bin/sshlimiter
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/alterarlimite.sh -O /bin/alterarlimite
	chmod +x /bin/alterarlimite
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/ajuda.sh -O /bin/ajuda
	chmod +x /bin/ajuda
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/sshmonitor2.sh -O /bin/sshmonitor
	chmod +x /bin/sshmonitor
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/userbackup.sh -O /bin/userbackup
	chmod +x /bin/userbackup
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/list.sh -O /bin/list
	chmod +x /bin/list
	fi
if [ -d "/etc/squid/" ]
then
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/2/addhost.sh -O /bin/addhost
	chmod +x /bin/addhost
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/alterarsenha.sh -O /bin/alterarsenha
	chmod +x /bin/alterarsenha
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/criarusuario2.sh -O /bin/criarusuario
	chmod +x /bin/criarusuario
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/2/delhost.sh -O /bin/delhost
	chmod +x /bin/delhost
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/expcleaner2.sh -O /bin/expcleaner
	chmod +x /bin/expcleaner
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/mudardata.sh -O /bin/mudardata
	chmod +x /bin/mudardata
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/remover.sh -O /bin/remover
	chmod +x /bin/remover
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/sshlimiter2.sh -O /bin/sshlimiter
	chmod +x /bin/sshlimiter
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/alterarlimite.sh -O /bin/alterarlimite
	chmod +x /bin/alterarlimite
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/ajuda.sh -O /bin/ajuda
	chmod +x /bin/ajuda
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/sshmonitor2.sh -O /bin/sshmonitor
	chmod +x /bin/sshmonitor
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/userbackup.sh -O /bin/userbackup
	chmod +x /bin/userbackup
	wget https://www.vpswebpanels.com/script/vpsmanager/scripts/list.sh -O /bin/list
	chmod +x /bin/list
fi
echo ""
tput setaf 8 ; tput setab 5 ; tput bold ; echo "Scripts para gerenciamento de usuário instalados" ; tput sgr0
tput setaf 8 ; tput setab 5 ; tput bold ; echo "Leia a documentação para evitar dúvidas e problemas!" ; tput sgr0
tput setaf 8 ; tput setab 5 ; tput bold ; echo "Para ver os comandos disponíveis use o comando: ajuda" ; tput sgr0
echo ""
if [[ "$optiondb" = '2' ]]; then
	awk -F : '$3 >= 500 { print $1 " 1" }' /etc/passwd | grep -v '^nobody' > /root/usuarios.db
fi
exit 1
