#BY: @judiba
#R3V1V3R VPS
#Data de criação: 18/05/2017
#Nome: ConfVPS03 - PackVPS 2.0"
clear
echo -e "\033[01;34mConfVPS03"
echo ""
echo -e "\033[01;36m       BY: @judiba
       R3V1V3R VPS
       Data de Atualização: 18/05/2017 
       DROPBEAR
       Nome: PackVPS 2.0           \033[1;37m"
echo ""
read -p "De enter para continuar..."
clear
read -p "Deseja instalar Dropbear em sua VPS? [ s/n ] : " s
if [ "$s" = "n" ]
then
clear
echo "Saindo..."
sleep 4
exit
fi
if [ "$s" = "s" ]
then
clear
echo -e "\033[46;1;37m Instalando Dropbear aguarde \033[0m"
sleep 3
apt-get install dropbear -y
printf '#Dropbear By: judiba\n NO_START=0\nDROPBEAR_PORT=443\nDROPBEAR_EXTRA_ARGS="-p 109 -p110\nDROPBEAR_BANNER="/etc/bannervps"\nDROPBEAR_RECEIVE_WINDOW=65536' > /etc/default/dropbear
service dropbear restart 
sleep 3
clear
echo -e "\033[46;1;37m Dropbear configurado com sucesso nas portas 109 e 110 porém trabalhando na porta 443 via SSLH !!!\033[0m"
fi
exit
