#!/bin/bash
ip=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
if [[ "$ip" = "" ]]; then
	ip=$(wget -qO- ipv4.icanhazip.com)
fi
# by: @judiba
read -p "IP do servidor: " -e -i $ip ip
echo Limpando as regras antigas.
sleep 1
# Apagando todas as regras
iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -F
iptables -t mangle -X
#Bloquear PING 
iptables -A INPUT -p icmp --icmp-type echo-request -j DROP

#Liberando torrent
iptables -A INPUT -p tcp --destination-port 6881 -j ACCEPT
iptables -t nat -A PREROUTING -i ppp0 -p tcp --dport 6881 -j DNAT --to-dest $ip
iptables -A FORWARD -p tcp -i ppp0 --dport 6881 -d $ip -j ACCEPT
iptables -t nat -A PREROUTING -i ppp0 -p udp --dport 6881 -j DNAT --to-dest $ip
iptables -A FORWARD -p udp -i ppp0 --dport 6881 -d $ip -j ACCEPT
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 6881 -j DNAT --to-dest $ip
iptables -t nat -A PREROUTING -i eth0 -p udp --dport 6881 -j DNAT --to-dest $ip
iptables -A INPUT -p tcp --destination-port 6881 -j ACCEPT
iptables -A INPUT -p tcp --destination-port 6881 -j ACCEPT
iptables -A INPUT -i eth0 -p tcp -s 0/0 --sport 6881 -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 6881 -j DNAT --to-dest $ip
iptables -A FORWARD -p tcp -i eth0 --dport 6881 -d $ip -j ACCEPT
iptables -t nat -A PREROUTING -i eth0 -p udp --dport 6881 -j DNAT --to-dest $ip
iptables -A FORWARD -p udp -i eth0 --dport 6881 -d $ip -j ACCEPT
iptables -A FORWARD -p udp -i eth0 --dport 6881 -d $ip -j ACCEPT
iptables -A FORWARD -p tcp -i eth0 --dport 6881 -d $ip -j ACCEPT
iptables -A INPUT -p tcp --destination-port 6889 -j ACCEPT
iptables -t nat -A PREROUTING -i ppp0 -p tcp --dport 6889 -j DNAT --to-dest $ip
iptables -A FORWARD -p tcp -i ppp0 --dport 6889 -d $ip -j ACCEPT
iptables -t nat -A PREROUTING -i ppp0 -p udp --dport 6889 -j DNAT --to-dest $ip
iptables -A FORWARD -p udp -i ppp0 --dport 6889 -d $ip -j ACCEPT
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 6889 -j DNAT --to-dest $ip
iptables -t nat -A PREROUTING -i eth0 -p udp --dport 6889 -j DNAT --to-dest $ip
iptables -A INPUT -p tcp --destination-port 6889 -j ACCEPT
iptables -A INPUT -p tcp --destination-port 6889 -j ACCEPT
iptables -A INPUT -i eth0 -p tcp -s 0/0 --sport 6889 -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 6889 -j DNAT --to-dest $ip
iptables -A FORWARD -p tcp -i eth0 --dport 6889 -d $ip -j ACCEPT
iptables -t nat -A PREROUTING -i eth0 -p udp --dport 6889 -j DNAT --to-dest $ip
iptables -A FORWARD -p udp -i eth0 --dport 6889 -d $ip -j ACCEPT
iptables -A FORWARD -p udp -i eth0 --dport 6889 -d $ip -j ACCEPT
iptables -A FORWARD -p tcp -i eth0 --dport 6889 -d $ip -j ACCEPT
iptables -A INPUT -p tcp --destination-port 28753 -j ACCEPT
iptables -t nat -A PREROUTING -i ppp0 -p tcp --dport 28753 -j DNAT --to-dest $ip
iptables -A FORWARD -p tcp -i ppp0 --dport 28753 -d $ip -j ACCEPT
iptables -t nat -A PREROUTING -i ppp0 -p udp --dport 28753 -j DNAT --to-dest $ip
iptables -A FORWARD -p udp -i ppp0 --dport 28753 -d $ip -j ACCEPT
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 6881:6889 -j DNAT --to-dest $ip
iptables -t nat -A PREROUTING -i eth0 -p udp --dport 6881:6889 -j DNAT --to-dest $ip
iptables -A INPUT -p tcp --destination-port 23457 -j ACCEPT
iptables -A INPUT -p tcp --destination-port 6881:6889 -j ACCEPT
iptables -A INPUT -i eth0 -p tcp -s 0/0 --sport 23457 -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 23457 -j DNAT --to-dest $ip
iptables -A FORWARD -p tcp -i eth0 --dport 23457 -d $ip -j ACCEPT
iptables -t nat -A PREROUTING -i eth0 -p udp --dport 23457 -j DNAT --to-dest $ip
iptables -A FORWARD -p udp -i eth0 --dport 23457 -d $ip -j ACCEPT
iptables -A FORWARD -p udp -i eth0 --dport 6881:6889 -d $ip -j ACCEPT
iptables -A FORWARD -p tcp -i eth0 --dport 6881:6889 -d $ip -j ACCEPT
echo Torrent Foi liberado com sucesso...
sleep 1