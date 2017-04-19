#!/bin/bash
##R3V1V3R VPS 
##PackVPS 1.0
##By: @judiba

corPadrao="\033[0m"
preto="\033[0;30m"
vermelho="\033[0;31m"
verde="\033[0;32m"
marrom="\033[0;33m"
azul="\033[0;34m"
purple="\033[0;35m"
cyan="\033[0;36m"
cinzaClaro="\033[0;37m"
pretoCinza="\033[1;30m"
vermelhoClaro="\033[1;31m"
verdeClaro="\033[1;32m"
amarelo="\033[1;33m"
azulClaro="\033[1;34m"
purpleClaro="\033[1;35m"
cyanClaro="\033[1;36m"
branco="\033[1;37m"

echo -e "\033[1;30m----------------------------------------------------------------------\033[0m"
echo -e "\033[1;37m                           .                                          \033[0m"
echo -e "\033[1;37m                      .XG@B@@1                                        \033[0m"  
echo -e "\033[1;37m                      @B@@@B@                                         \033[0m"
echo -e "\033[1;37m                      B@B@B@M          ,,::i.                         \033[0m"
echo -e "\033[1;37m                      @B@BOO@qi       iLPSF5X:                        \033[0m"
echo -e "\033[1;37m                      B@Bri2B@B@:    PB@Bkri7v,                       \033[0m"    
echo -e "\033[1;37m                      @B@     7@Z   :BN                               \033[0m"
echo -e "\033[1;37m                      B@B@ii:  :B0  .7 .i77i.P:                       \033[0m"
echo -e "\033[1;37m                      @B:7GB@M7B@@,    k@B@XrBS                       \033[0m"
echo -e "\033[1;37m                      B0       @B@r                                   \033[0m"
echo -e "\033[1;37m                      @L      8B@B:                                   \033[0m" 
echo -e "\033[1;37m                      XO     @B@B@      ,.                            \033[0m"
echo -e "\033[1;37m                      :B.j0Pii7G@B  .;   :7FSX.                       \033[0m"
echo -e "\033[1;37m                       @:LB@:   .@B@@r   .BMB.                        \033[0m"
echo -e "\033[1;37m                       .@.jiBB@B@@:.@B@B@B:L7                         \033[0m" 
echo -e "\033[1;37m                        :@v5   .:.   .:.  uX                          \033[0m"
echo -e "\033[1;37m                         .@2F    :Jij    EL                           \033[0m"
echo -e "\033[1;37m                           MNL    @@J  ,k.                            \033[0m"
echo -e "\033[1;37m                            UBv   @BE .U                              \033[0m"
echo -e "\033[1;37m                             :E7 .B@B .                               \033[0m"
echo -e "\033[1;37m                               i  @Br                                 \033[0m"
echo -e "\033[1;37m                                  @                                   \033[0m" 
echo -e "\033[1;37m                                                                      \033[0m"  
echo -e "\033[1;30m----------------------------------------------------------------------\033[0m"

sleep 5

tput setaf 8 ; tput setab 5 ; tput bold ; printf '%30s%s%-15s\n' "PACKVPS 1.0" ; tput sgr0
echo ""
echo ""
echo -e "\033[1;34m INSTALANDO...\033[1;32m"

apt-get update -y 1>/dev/null 2>/dev/null
apt-get install nano
apt-get install htop
apt-get install screenfetch -y
apt-get install figlet -y
echo "
screenfetch
figlet R3V1V3R VPS
PackVPS " >> .bashrc
clear
apt-get install python-pip -y
pip install speedtest-cli -y
apt-get install nethogs -y
apt-get install nload -y
apt-get install unzip -y
apt-get install sudo -y
apt-get install sslh -y
clear
wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc
apt-get update -y 1>/dev/null 2>/dev/null
clear
apt-get install apt-transport-https -y
apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python -y
dpkg-reconfigure tzdata
service exim4 stop
apt-get -y --purge remove exim4*
apt-get -y --purge remove samba*
apt-get -y --purge remove sendmail*
apt-get -y --purge remove bind9*
apt-get autoclear -y 1>/dev/null 2>/dev/null

iptables -F

clear
wget https://raw.githubusercontent.com/judiba/Main/master/ConfAtual -O /bin/ConfAtual
chmod +x /bin/ConfAtual
sed -i -e 's/\r$//' /bin/ConfAtual

wget https://raw.githubusercontent.com/judiba/Main/master/monitorcpu -O /bin/CpuMonitor
chmod +x /bin/CpuMonitor
sed -i -e 's/\r$//' /bin/CpuMonitor

wget https://raw.githubusercontent.com/judiba/Main/master/LimpadorCache -O /bin/ClearCache
chmod +x /bin/ClearCache
sed -i -e 's/\r$//' /bin/ClearCache

wget https://raw.githubusercontent.com/judiba/Main/master/usermonitor -O /bin/UserMonitor
chmod +x /bin/UserMonitor
sed -i -e 's/\r$//' /bin/UserMonitor

wget https://raw.githubusercontent.com/judiba/Main/master/OpenUdp -O /bin/OpenUDP
chmod +x /bin/OpenUDP
sed -i -e 's/\r$//' /bin/OpenUDP

wget https://raw.githubusercontent.com/judiba/Main/master/TesteConexao -O /bin/SpeedTest
chmod +x /bin/SpeedTest
sed -i -e 's/\r$//' /bin/SpeedTest

wget https://raw.githubusercontent.com/judiba/Main/master/Banner -O /bin/Banner
chmod +x /bin/Banner
sed -i -e 's/\r$//' /bin/Banner

wget https://raw.githubusercontent.com/judiba/Main/master/UserBackup -O /bin/UserBackup
chmod +x /bin/UserBackup
sed -i -e 's/\r$//' /bin/UserBackup

wget https://raw.githubusercontent.com/judiba/Main/master/UserCreate -O /bin/UserCreate
chmod +x /bin/UserCreate
sed -i -e 's/\r$//' /bin/UserCreate

wget https://raw.githubusercontent.com/judiba/Main/master/script/UserClear -O /bin/UserClear
chmod +x /bin/UserClear
sed -i -e 's/\r$//' /bin/UserClear

wget https://raw.githubusercontent.com/judiba/Main/master/LimiterSSH -O /bin/LimiterSSH
chmod +x /bin/LimiterSSH
sed -i -e 's/\r$//' /bin/ limiterSSH

wget https://raw.githubusercontent.com/judiba/Main/master/MonitorTotal.sh -O /bin/MonitorTotal.sh
chmod +x /bin/MonitorTotal.sh

wget https://raw.githubusercontent.com/judiba/Main/master/MudarLimite -O /bin/MudarLimite
chmod +x /bin/MudarLimite
sed -i -e 's/\r$//' /bin/MudarLimite

wget https://raw.githubusercontent.com/judiba/Main/master/MudarSenha -O /bin/MudarSenha
chmod +x /bin/MudarSenha
sed -i -e 's/\r$//' /bin/MudarSenha

wget https://raw.githubusercontent.com/judiba/Main/master/ConfVps -O /bin/ConfVPS
chmod +x /bin/ConfVPS
sed -i -e 's/\r$//' /bin/ConfVPS

wget https://raw.githubusercontent.com/judiba/Main/master/MudarValidade -O /bin/MudarValidade
chmod +x /bin/MudarValidade
sed -i -e 's/\r$//' /bin/MudarValidade

wget https://raw.githubusercontent.com/judiba/Main/master/VNC -O /bin/VNC
chmod +x /bin/VNC
sed -i -e 's/\r$//' /bin/VNC

wget https://raw.githubusercontent.com/judiba/Main/master/UserDel -O /bin/UserDel
chmod +x /bin/UserDel
sed -i -e 's/\r$//' /bin/UserDel

wget https://raw.githubusercontent.com/judiba/Main/master/KernelControl -O /bin/KernelControl
chmod +x /bin/KernelControl
sed -i -e 's/\r$//' /bin/KernelControl

wget https://raw.githubusercontent.com/judiba/Main/master/DadosMonitor -O /bin/DadosMonitor
chmod +x /bin/DadosMonitor
sed -i -e 's/\r$//' /bin/DadosMonitor

wget https://raw.githubusercontent.com/judiba/Main/master/OpenVPN -O /bin/OpenVPN
chmod +x /bin/OpenVPN
sed -i -e 's/\r$//' /bin/OpenVPN

wget https://raw.githubusercontent.com/judiba/Main/master/tcptweaker.sh -O /bin/tcptweaker.sh
chmod +x /bin/tcptweaker.sh

wget https://raw.githubusercontent.com/judiba/Main/master/PackVPS -O /bin/PackVPS
chmod +x /bin/PackVPS
sed -i -e 's/\r$//' /bin/PackVPS

clear

tput setaf 8 ; tput setab 5 ; tput bold ; printf '%30s%s%-15s\n' "PackVPS 1.0" ; tput sgr0
echo ""
echo -e OBS:    Digite - PackVPS - para acessar esse PACK
echo -e Escolha uma opação:    Para Sair Ctrl + C
echo -e "[00]\033[01;36m•====> ConfAtual (CONFIGURAÇÃO DE ATUALIZAÇÃO DA VPS) \033[0m"
echo -e "[01]\033[01;36m•====> Configurar (CONFIGURA A VPS|OpenSSH|SQUID|) \033[0m"
echo -e "[02]\033[01;36m•====> UserCreate (Criar Usuarios Teste e SSH)\033[0m"
echo -e "[03]\033[01;36m•====> UserBackup (Gerencia Backup dos Usuarios SSH)\033[0m"
echo -e "[04]\033[01;36m•====> CpuMonitor (Monitora o Uso da CPU, RAM e UPTIME)\033[0m"
echo -e "[05]\033[01;36m•====> UserMonitor (Monitora os Usuarios Conectados)\033[0m"
echo -e "[06]\033[01;36m•====> DadosMonitor (Monitora o Uso de Dados/Banda|in||out|)\033[0m"
echo -e "[07]\033[01;36m•====> VNC (Ativa a Interface Gráfica no Servidor)\033[0m"
echo -e "[08]\033[01;36m•====> ClearCache (Limpa Cache e Swap da Maquina)\033[0m"
echo -e "[09]\033[01;36m•====> OpenUDP (Libera a Porta UDP para Ligacão e Jogos)\033[0m"
echo -e "[10]\033[01;36m•====> SpeedTest (Testa a Velocidade de Link do Servidor)\033[0m"
echo -e "[11]\033[01;36m•====> Banner (Mensagem para Usuario Quando Conectar)\033[0m"
echo -e "[12]\033[01;36m•====> LimiterSSH (Limita as Conexoes de Cada Usuario)\033[0m"
echo -e "[13]\033[01;36m•====> MudarLimite (Muda o Limite do Usuario)\033[0m"
echo -e "[14]\033[01;36m•====> MudarSenha (Muda a Senha do Usuario)\033[0m"
echo -e "[15]\033[01;36m•====> MudarValidade (Muda a Data de Validade do Usuario)\033[0m"
echo -e "[16]\033[01;36m•====> UserDel (Deleta Usuario)\033[0m"
echo -e "[17]\033[01;36m•====> Addhost (Adiciona Novo Host ao Squid)\033[0m"
echo -e "[18]\033[01;36m•====> OpenVPN (Configura e Gerencia Usuarios .ovpn)\033[0m"
echo -e "[19]\033[01;36m•====> UserClear (Limpa Usuarios Vencidos)\033[0m"
echo -e "[20]\033[01;36m•====> KernelControl (Procura ATT para Kernel ou Remove)\033[0m"
echo -e "[21]\033[01;36m•====> SSHMonitor (Monitor Total de Usuarios Conectados)\033[0m"
echo -e "[22]\033[01;36m•====> Security (Ativa e Desativa o Firewall e Torrent)\033[0m"
echo -e "[23]\033[01;36m•====> Netflix (Ativa o Hulu e DNS para NETFLIX)\033[0m"
echo -e "[24]\033[01;36m•====> Dropbear (Ativa o Dropbear SSH para NETFLIX)\033[0m"
echo -e "[25]\033[01;36m•====> TCPTweaker (Melhora a velocidade e desempenho da VPS)\033[0m"
echo -e "[26]\033[01;36m•====> Desinstalar (Remove o PackVPS por completo)\033[0m"

read -p " Selecione uma opção [00-26]: " opcao

case $opcao in
 00)
  ConfAtual
  sleep 4
  PackVPS;;
 01)
  ConfVPS
  sleep 4
  PackVPS;;
 02)
  UserCreate
  sleep 5
  PackVPS;;
 03)
  UserBackup
  sleep 5
  PackVPS;;
 04)
  CpuMonitor;;
 05)
  UserMonitor;;
 06)
  DadosMonitor;;
 07)
  VNC
  sleep 8
  PackVPS;;
 08)
  ClearCache
  sleep 4
  PackVPS;;
 09)
  OpenUDP;;
 10)
  SpeedTest
  sleep 8
  PackVPS;;
 11)
  Banner
  sleep 4
  PackVPS;;
 12)
  LimiterVPS;;
 13)
  MudarLimite
  sleep 4
  PackVPS;;
 14)
  MudarSenha
  sleep 4
  PackVPS;;
 15)
  MudarValidade
  sleep 5
  PackVPS;;
 16)
  UserDel
  sleep 4
  PackVPS;;
 17)
  addhost
  sleep 4
  PackVPS;;
 18)
  OpenVPN
  sleep 5
  PackVPS;;
 19)
  UserClear
  sleep 3
  PackVPS;;
 20)
  KernelControl
  sleep 2
  PackVPS;;
 21)
  MonitorTotal.sh
  sleep 20
  PackVPS;;
 22)
  Security.sh
  sleep 20
  PackVPS;;
 23)
  Netflix
  sleep 20
  PackVPS;;  
 24)
  Dropbear
  sleep 3
  PackVPS;;
 25)
  tcptweaker.sh
  sleep 3
  PackVPS;; 
 26)
  rm -rf /bin/Banner 2>/dev/null
  rm -rf /bin/ClearCache 2>/dev/null
  rm -rf /bin/ConfVPS 2>/dev/null
  rm -rf /bin/CpuMonitor 2>/dev/null
  rm -rf /bin/DadosMonitor 2>/dev/null
  rm -rf /bin/LimiterSSH 2>/dev/null
  rm -rf /bin/MudarSenha 2>/dev/null
  rm -rf /bin/MudarValidade 2>/dev/null
  rm -rf /bin/OpenUDP 2>/dev/null
  rm -rf /bin/OpenVPN 2>/dev/null
  rm -rf /bin/SpeedTest 2>/dev/null    
  rm -rf /bin/speedtest.py 2>/dev/null
  rm -rf /bin/UserBackup 2>/dev/null
  rm -rf /bin/UserClear 2>/dev/null
  rm -rf /bin/UserCreate 2>/dev/null
  rm -rf /bin/UserDel 2>/dev/null
  rm -rf /bin/UserMonitor 2>/dev/null
  rm -rf /bin/MonitorTotal.sh 2>/dev/null
  rm -rf /bin/VNC 2>/dev/null
  rm -rf /bin/tcptweaker.sh 2>/dev/null
  rm -rf /bin/addhost 2>/dev/null
  rm -rf /bin/ajuda 2>/dev/null
  rm -rf /bin/alterarlimite 2>/dev/null
  rm -rf /bin/alterarsenha 2>/dev/null
  rm -rf /bin/badudp 2>/dev/null
  rm -rf /bin/criarusuario 2>/dev/null
  rm -rf /bin/delhost 2>/dev/null
  rm -rf /bin/expcleaner 2>/dev/null
  rm -rf /bin/mudardata 2>/dev/null
  rm -rf /bin/deletarusuario 2>/dev/null
  rm -rf /bin/redefinirusuario 2>/dev/null
  rm -rf /bin/limite 2>/dev/null
  rm -rf /bin/remover 2>/dev/null
  rm -rf /bin/sshlimiter 2>/dev/null
  rm -rf /bin/sshmonitor 2>/dev/null
  rm -rf /bin/vpspack 2>/dev/null
  rm -rf /bin/PackVPS 2>/dev/null
  rm InstallPackVPS
  rm jcameron-key.asc
  sed '/PackVPS/d' .bashrc
  clear;;  
esac
