#BY: @judiba
#R3V1V3R VPS
#Data de criação: 30/04/2017
#Nome: ConfVPS02 - PackVPS 2.0"
clear
echo -e "\033[01;34mConfVPS02"
echo ""
echo -e "\033[01;36m       BY: @judiba                 
       R3V1V3R VPS                 
       Data de criação: 26/04/2017 
       TCPTWEAKER
       Nome: PackVPS 2.0           \033[1;37m"
echo ""
read -p "De enter para continuar..."
clear
tput setaf 8 ; tput setab 5 ; tput bold ; printf '%30s%s%-15s\n' "TCP Tweaker 1.0" ; tput sgr0
if [[ `grep -c "^#R3V1V3R" /etc/sysctl.conf` -eq 1 ]]
then
	echo ""
	echo "As configurações de rede TCP Tweaker já foram adicionadas no sistema!"
	echo ""
	read -p "Deseja remover as configurações do TCP Tweaker? [s/n]: " -e -i n resposta0
	if [[ "$resposta0" = 's' ]]; then
		grep -v "^#R3V1V3R
net.ipv4.tcp_window_scaling = 1
net.core.rmem_max = 16777216
net.core.wmem_max = 16777216
net.ipv4.tcp_rmem = 4096 87380 16777216
net.ipv4.tcp_wmem = 4096 16384 16777216
net.ipv4.tcp_low_latency = 1
net.ipv4.tcp_slow_start_after_idle = 0" /etc/sysctl.conf > /tmp/syscl && mv /tmp/syscl /etc/sysctl.conf
/sbin/sysctl -p /etc/sysctl.conf > /dev/null
		echo ""
		echo "As configurações de rede do TCP Tweaker foram removidas com sucesso."
		echo ""
	exit
	else 
		echo ""
		exit
	fi
else
	echo ""
	echo "Este é um script experimental. Use por sua conta e risco!"
	echo "Este script irá alterar algumas configurações de rede"
	echo "do sistema para reduzir a latência e melhorar a velocidade."
	echo ""
	read -p "Continuar com a instalação? [s/n]: " -e -i n resposta
	if [[ "$resposta" = 's' ]]; then
	echo ""
	echo "Modificando as seguintes configurações:"
	echo " " >> /etc/sysctl.conf
	echo "#R3V1V3R" >> /etc/sysctl.conf
echo "net.ipv4.tcp_window_scaling = 1
net.core.rmem_max = 16777216
net.core.wmem_max = 16777216
net.ipv4.tcp_rmem = 4096 87380 16777216
net.ipv4.tcp_wmem = 4096 16384 16777216
net.ipv4.tcp_low_latency = 1
net.ipv4.tcp_slow_start_after_idle = 0" >> /etc/sysctl.conf
echo ""
/sbin/sysctl -p /etc/sysctl.conf
		echo ""
		echo "As configurações de rede do TCP Tweaker foram adicionadas com sucesso."
		echo ""
	else
		echo ""
		echo "A instalação foi cancelada pelo usuário!"
		echo ""
	fi
fi
exit