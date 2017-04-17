#!/bin/bash
# by: @judiba
# Creditos: R3V1V3R VPS

ip=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
if [[ "$ip" = "" ]]; then
	ip=$(wget -qO- ipv4.icanhazip.com)
fi
read -p "IP do servidor: " -e -i $ip ip
echo Apagando todas as regras.
sleep 1
# Apagando todas as regras
iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -F
iptables -t mangle -X

echo Bloqueando tudo..
sleep 1
# Mudando a politica - Começa bloqueando tudo
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP

echo Liberando conexões pre-estabelecidas...
sleep 1
# Libera conexões pre-estabelecidas
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A FORWARD -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -t filter -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT

echo Bloqueio de conexões repetidas...
sleep 1
##Rejeita conexões repetidas com mesmo IP
iptables -A INPUT -p tcp --syn --dport 443 -m connlimit --connlimit-above 2 -j REJECT

echo Liberando HTTPS....
sleep 1
# Liberar HTTPS
iptables -A OUTPUT -p tcp -d $ip --dport 443 -m state --state NEW -j ACCEPT

echo Liberando HTTP.....
sleep 1
# Liberar HTTP
iptables -A OUTPUT -p tcp -d $ip --dport 80 -m state --state NEW -j ACCEPT

echo Liberando DNS......
sleep 1
# Liberar DNS
iptables -A OUTPUT -p tcp --dport 53 -m state --state NEW -j ACCEPT
iptables -A OUTPUT -p udp --dport 53 -m state --state NEW -j ACCEPT

echo Liberando SSH........
sleep 1
#Liberar OpenSSH
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -p tcp --dport 143 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 22 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 143 -j ACCEPT

echo Liberando Dropbear.......
sleep 1
#Liberar Dropbear SSH
iptables -A OUTPUT -p tcp --dport 109 -m state --state NEW -j ACCEPT

echo Liberando SQUID.........
sleep 1
#Liberar SQUID
iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
iptables -A INPUT -p tcp --dport 8799 -j ACCEPT
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 3128 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 8080 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 80 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 3128 -j ACCEPT
iptables -A FORWARD -p tcp --dport 8080 -j ACCEPT
iptables -A FORWARD -p tcp --dport 8799 -j ACCEPT
iptables -A FORWARD -p tcp --dport 80 -j ACCEPT
iptables -A FORWARD -p tcp --dport 3128 -j ACCEPT

echo Liberando Redes Sociais........
sleep 1
#Liberar Redes Sociais
iptables -A OUTPUT -p tcp -d $ip --dport 5223 -m state --state NEW -j ACCEPT
iptables -A OUTPUT -p tcp -d $ip --dport 9339 -m state --state NEW -j ACCEPT
iptables -A FORWARD -p udp --dport 3478 -j ACCEPT
iptables -A INPUT -p tcp --dport 5223 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 5223 -j ACCEPT
iptables -A INPUT -p tcp --dport 9339 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 9339 -j ACCEPT
#BADVPN
iptables -A FORWARD -p udp --dport 7300 -j ACCEPT

echo Bloqueando e previnindo ataques ...........
sleep 1
#Bloquear PING
iptables -A OUTPUT -p icmp -o eth0 -j ACCEPT
iptables -A INPUT -p icmp --icmp-type echo-request -s 0/0 -i eth0 -j ACCEPT
iptables -A INPUT -p icmp --icmp-type destination-unreachable -s 0/0 -i eth0 -j ACCEPT
iptables -A INPUT -p icmp --icmp-type time-exceeded -s 0/0 -i eth0 -j ACCEPT
iptables -I INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p icmp -i eth0 -j DROP
iptables -A INPUT -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -p icmp --icmp-type echo-request -j DROP

#Bloquear DHCP de FORA
iptables -A INPUT -p tcp --dport 67 -m state --state NEW -j DROP
iptables -A INPUT -p udp --dport 67 -m state --state NEW -j DROP

#Bloqueia os ataques de flood mais comuns
iptables -A INPUT -p tcp --tcp-flags ALL NONE -j DROP
iptables -A INPUT -p tcp ! --syn -m state --state NEW -j DROP
iptables -A INPUT -p tcp --tcp-flags ALL ALL -j DROP

#Bloqueio de SNMP
iptables -A INPUT -p udp --dport 161 -j DROP
iptables -A FORWARD -p udp --dport 161 -j DROP 

#Bloqueio de Netbios
iptables -A FORWARD -p udp --dport 135:139 -j DROP
iptables -A FORWARD -p tcp --dport 135:139 -j DROP
iptables -A FORWARD -p udp --dport 445 -j DROP
iptables -A FORWARD -p tcp --dport 445 -j DROP
iptables -A INPUT -p udp --dport 135:139 -j DROP
iptables -A INPUT -p tcp --dport 135:139 -j DROP
iptables -A INPUT -p udp --dport 445 -j DROP
iptables -A INPUT -p tcp --dport 445 -j DROP

#Liberar WEBMIN e USERMIN
iptables -A INPUT -p tcp --dport 10000 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 10000 -j ACCEPT
iptables -A INPUT -p tcp --dport 20000 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 20000 -j ACCEPT

#Bloqueando torrent
echo Bloqueando torrent.......
sleep 1
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 6881:6889 -j DNAT --to-dest $ip
iptables -A FORWARD -p tcp -i eth0 --dport 6881:6889 -d $ip -j REJECT
iptables -A OUTPUT -p tcp --dport 6881:6889 -j DROP
iptables -A OUTPUT -p udp --dport 6881:6889 -j DROP
iptables -A FORWARD -m string --algo bm --string "BitTorrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "BitTorrent protocol" -j DROP
iptables -A FORWARD -m string --algo bm --string "peer_id=" -j DROP
iptables -A FORWARD -m string --algo bm --string ".torrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "announce.php?passkey=" -j DROP
iptables -A FORWARD -m string --algo bm --string "torrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "announce" -j DROP
iptables -A FORWARD -m string --algo bm --string "info_hash" -j DROP
iptables -A FORWARD -m string --string "get_peers" --algo bm -j DROP
iptables -A FORWARD -m string --string "announce_peer" --algo bm -j DROP
iptables -A FORWARD -m string --string "find_node" --algo bm -j DROP

echo Firewall configurado...
sleep 1