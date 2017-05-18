#BY: @judiba
#R3V1V3R VPS
#Data de criação: 22/04/2017
#Nome: MenuVPS01 - PackVPS 2.0"
clear
echo -e "\033[01;34mMenuVPS"
echo ""
echo -e "\033[01;36m       BY: @judiba                 
       R3V1V3R VPS                 
       Data de criação: 22/04/2017 
       BANNER
       Nome: PackVPS 2.0           \033[1;37m"
echo ""
read -p "De enter para continuar..."
clear
echo -e "Escolha o que vai fazer:\033[01;33m"
echo ""
echo -e "\033[1;33m[1]\033[01;32m Trocar mensagem de Informação INTERNO\033[0m"
echo -e "\033[1;33m[2]\033[01;32m Trocar mensagem do Banner EXTERNO\033[0m"
echo -e "\033[1;33m[3]\033[01;32m Sair\033[1;34m"
echo ""
read -p "Escolha o numero da sua opção: " numero
echo ""
if [ "$numero" = "*" ]
then
echo "Numero informado não encontrado..."
sleep 3
echo -e "Saindo...\033[1;37m"
exit 0
fi

if [ "$numero" = "1" ]
then
mv /etc/motd /etc/motd.bak
touch /etc/motd
then
echo "R3V1V3R VPS" > /etc/motd
if [ -f /etc/motd ]
then
info=$(cat /etc/motd)
echo -e "\033[1;32mInfome atual\n\n\033[1;37m$info\n\033[0m"
read -p "Quer trocar a Mensagem EXTERNA? [ s/n ]: " ta
if [ "$ta" = "s" ]
then
echo "Trocar o Informe"
read -p ":" dizer
echo "$dizer" > $info
echo "|Config by: @judiba|" >> $info
echo "|R3V1V3R VPS|" >> $info
clear
echo "Aguarde alterando..."
sleep 3
clear
exit 0
fi
fi

if [ "$ta" = "n" ]
then
clear
echo "Sucesso..."
sleep 3
echo -e "Saindo...\033[1;37m"
sleep 2
clear
exit 0
fi

if [ "$numero" = "2" ]
then
chk=$(cat /etc/ssh/sshd_config |grep Banner )
if echo "$chk" |grep -v "#Banner" |grep Banner > /dev/null 2> /dev/null
then
local=$(echo "$chk" |grep -v "#Banner" |grep Banner |awk '{print $2}')
if [ -f /etc/bannervps ]
then
banner=$(cat /etc/bannervps)
echo -e "\033[1;32mBanner atual\n\n\033[1;37m$banner\n\033[0m"
read -p "Quer trocar a Mensagem EXTERNA? [ s/n ]: " ta
if [ "$ta" = "s" ]
then
echo "De um nome ao Servidor"
read -p ":" nome
echo "Bem Vindo(a) ao Servidor $nome" > $local
echo "Digite a mensagem para seu Banner"
read -p ":" banner
echo "$banner" >> $local
echo "|P*R*O*I*B*I*D*O|" >> $local
echo "|*xTorrents*xSPAM*xDDoS*xHACKING*xFLOOD| " >> $local
echo "Informe seu Telegram para contato"
read -p ":@" telegram
echo "Entre em contato pelo Telegram @$telegram" >> $local
echo "|Config by: @judiba|" >> $local
echo "|R3V1V3R VPS|" >> $local
echo "Banner /etc/bannervps" >> /etc/ssh/sshd_config
service ssh restart > /dev/null 2> /dev/null
service sshd restart > /dev/null 2> /dev/null
clear
echo "Aguarde alterando..."
clear
exit 0
fi
fi
fi
fi
if [ "$ta" = "n" ]
then
clear
echo "Sucesso..."
sleep 3
echo -e "Saindo...\033[1;37m"
sleep 2
clear
exit 0
fi

if [ "$numero" = "3" ]
then
clear
echo -e "Saindo...\033[1;37m"
sleep 3
clear
exit 0
fi