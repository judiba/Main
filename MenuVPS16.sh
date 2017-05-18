#BY: @judiba
#R3V1V3R VPS
#Data de criação: 29/04/2017
#Nome: ConfVPS16 - PackVPS 2.0"
clear
echo -e "\033[01;34mConfVPS08"
echo ""
echo -e "\033[01;36m       BY: @judiba                 
       R3V1V3R VPS                 
       Data de criação: 29/04/2017 
       UserDel	   
       Nome: PackVPS 2.0           \033[1;37m"
echo ""
read -p "De enter para continuar..."
clear
tput setaf 8 ; tput setab 5 ; tput bold ; printf '%32s%s%-13s\n' "Remover Usuário SSH" ; tput sgr0
echo ""
tput bold ; echo "Lista de usuários:" ; echo "" ; tput sgr0
tput setaf 3 ; tput bold ; awk -F : '$3 >= 500 { print $1 }' /etc/passwd | grep -v '^nobody' ; tput sgr0
echo ""
read -p "Nome do usuário para remover: " user
if [[ -z $user ]]
then
	tput setaf 8 ; tput setab 5 ; tput bold ; echo "" ; echo "Você digitou um nome de usuário vazio ou inválido!" ; echo "" ; tput sgr0
	exit 1
else
	if [[ `grep -c /$user: /etc/passwd` -ne 0 ]]
	then
		ps x | grep $user | grep -v grep | grep -v pt > /tmp/rem
		if [[ `grep -c $user /tmp/rem` -eq 0 ]]
		then
			deluser $user > /dev/null
			tput setaf 7 ; tput setab 1 ; tput bold ; echo "" ; echo "O usuário $user foi removido com sucesso!" ; echo "" ; tput sgr0
			grep -v ^$user[[:space:]] /root/usuarios.db > /tmp/ph ; cat /tmp/ph > /root/usuarios.db
			exit 1
		else
			tput setaf 8 ; tput setab 5 ; tput bold ; echo "" ; echo "Desconectando Usuario..." ; tput sgr0
			pkill -f "$user"
			deluser $user > /dev/null
			tput setaf 7 ; tput setab 1 ; tput bold ; echo "" ; echo "O usuário $user foi removido com sucesso!" ; echo "" ; tput sgr0
			grep -v ^$user[[:space:]] /root/usuarios.db > /tmp/ph ; cat /tmp/ph > /root/usuarios.db
			exit 1
		fi
	else
		tput setaf 8 ; tput setab 5 ; tput bold ; echo "" ; echo "O usuário $user não existe!" ; echo "" ; tput sgr0
	fi
fi