#BY: @judiba
#R3V1V3R VPS
#Data de criação: 22/04/2017
#Nome: PackVPS - PackVPS 2.0"
clear
echo -e "\033[01;34mPackVPS"
echo ""
echo -e "\033[01;36m       BY: @judiba                 
       R3V1V3R VPS                 
       Data de criação: 22/04/2017 
       Nome: PackVPS 2.0           \033[1;37m"
echo ""
read -p "De enter para continuar..."
clear
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

tput setaf 8 ; tput setab 5 ; tput bold ; printf '%30s%s%-15s\n' "PackVPS 2.0" ; tput sgr0
echo ""
echo -e "\033[01;34mOBS: Digite - PackVPS - para acessar esse PACK\033[1;34m"
echo -e "\033[01;34mEscolha uma opção: Para Sair Ctrl + C \033[1;33m"
echo ""
echo -e "\033[01;33m[00]\033[01;32m•=> ConfVPS00 (ATUALIZAÇÃO DE SISTEMAS VPS) \033[0m"
echo -e "\033[01;33m[01]\033[01;32m•=> ConfVPS01 (Instalação padrão de VPS OpenSSH|SQUID|) \033[0m"
echo -e "\033[01;33m[02]\033[01;32m•=> ConfVPS02 (TCPTWEAKER - Ajustes no desempenho da VPS)\033[0m"
echo -e "\033[01;33m[03]\033[01;32m•=> ConfVPS03 (DROPBEAR - Outro serviço de SSH)\033[0m"
echo -e "\033[01;33m[04]\033[01;32m•=> ConfVPS04 (SSLH - Um Multiplexador SSL / SSH para Linux)\033[0m"
echo -e "\033[01;33m[05]\033[01;32m•=> ConfVPS05 (OpenVPN (Configura e Instala o Servidor)\033[0m"
echo -e "\033[01;33m[06]\033[01;32m•=> ConfVPS06 (KernelControl (Procura ATT para Kernel ou Remove)\033[0m"
echo -e "\033[01;33m[07]\033[01;32m•=> ConfVPS07 (VNC - Ativa a Interface Gráfica no Servidor)\033[0m"
echo -e "\033[01;33m[08]\033[01;32m•=> ConfVPS08 (SECURITY - Ativa ou Desativa o Firewall e Torrent)\033[0m"
echo -e "\033[01;33m[09]\033[01;32m•=> ConfVPS09 (OpenUDP - Instalação)\033[0m"
echo -e "\033[01;33m[10]\033[01;32m•=> ConfVPS10 (NETFLIX - Configura o Dropbear sem SQUID)\033[0m"
echo -e "\033[01;33m[11]\033[01;32m•===> RETIRAR (Retira - O PackVPS da sua VPS)\033[0m"
echo -e "\033[01;33m[12]\033[01;32m•===> REMOVER (Remove - VPS Manager's e outros da sua VPS)\033[0m"
echo -e "\033[01;33m[13]\033[01;32m•===> MenuVPS (Menu - Gerenciamento da R3V1V3R VPS)\033[0m"
echo -e "\033[01;33m[14]\033[01;32m•=>VPSMANAGER (Menu - VPS Manager do Phreaker56)\033[1;34m"
echo ""
read -p "Selecione a Configuração [00-13]: " conf
echo ""
case $conf in
 00)
  bash ConfVPS00.sh;;
 01)
  bash ConfVPS01.sh;;
 02)
  bash ConfVPS02.sh;;
 03)
  bash ConfVPS03.sh;;
 04)
  bash ConfVPS04.sh;;
 05)
  bash ConfVPS05.sh;;
 06)
  bash ConfVPS06.sh;;
 07)
  bash ConfVPS07.sh;;
 08)
  bash ConfVPS08.sh;;
 09)
  bash ConfVPS09.sh;;
 10)
  bash ConfVPS10.sh;;
 11)
  echo "Retirando PackVPS...1%"
  rm -rf /bin/ConfVPS00.sh 2>/dev/null
  echo "Retirando PackVPS...5%"
  rm -rf /bin/ConfVPS01.sh 2>/dev/null
  echo "Retirando PackVPS...10%"
  rm -rf /bin/ConfVPS02.sh 2>/dev/null
  echo "Retirando PackVPS...15%"
  rm -rf /bin/ConfVPS03.sh 2>/dev/null
  echo "Retirando PackVPS...20%"
  rm -rf /bin/ConfVPS04.sh 2>/dev/null
  echo "Retirando PackVPS...25%"
  rm -rf /bin/ConfVPS05.sh 2>/dev/null
  echo "Retirando PackVPS...30%"
  rm -rf /bin/ConfVPS06.sh 2>/dev/null
  echo "Retirando PackVPS...35%"
  rm -rf /bin/ConfVPS07.sh 2>/dev/null
  echo "Retirando PackVPS...40%"
  rm -rf /bin/ConfVPS08.sh 2>/dev/null
  echo "Retirando PackVPS...45%"
  rm -rf /bin/ConfVPS09.sh 2>/dev/null
  echo "Retirando PackVPS...50%"
  rm -rf /bin/ConfVPS10.sh 2>/dev/null    
  echo "Retirando PackVPS...55%"
  rm -rf /bin/ConfVPS11.sh 2>/dev/null
  echo "Retirando PackVPS...60%"
  rm -rf /bin/ConfVPS12.sh 2>/dev/null
  echo "Retirando PackVPS...65%"
  rm -rf /bin/ConfVPS13.sh 2>/dev/null
  echo "Retirando PackVPS...70%"
  rm -rf /bin/ConfVPS14.sh 2>/dev/null
  echo "Retirando PackVPS...75%"
  rm -rf /bin/ConfVPS15.sh 2>/dev/null
  echo "Retirando PackVPS...80%"
  rm -rf /bin/ConfVPS16.sh 2>/dev/null
  echo "Retirando PackVPS...85%"
  rm -rf /bin/ConfVPS17.sh 2>/dev/null
  echo "Retirando PackVPS...90%"
  rm -rf /bin/ConfVPS18.sh 2>/dev/null
  echo "Retirando PackVPS...95%"
  rm -rf /bin/ConfVPS19.sh 2>/dev/null
  echo "Retirando PackVPS...96%"
  rm -rf /bin/ConfVPS20.sh 2>/dev/null
  echo "Retirando PackVPS...97%"
  rm -rf /bin/ConfVPS21.sh 2>/dev/null
  echo "Retirando PackVPS...98%"
  rm -rf /bin/ConfVPS22.sh 2>/dev/null
  echo "Retirando PackVPS...99%"
  rm -rf /bin/ConfVPS23.sh 2>/dev/null
  echo "Retirando PackVPS...100%"
  rm -rf /bin/ConfVPS24.sh 2>/dev/null
  echo "Finalizando..."
  rm -rf /bin/ConfVPS25.sh 2>/dev/null
  echo ".............."
  sleep 5
  clear;;  
 12)
  echo "Removendo VPS Manager 3.0..."
  sleep 3
  rm -rf /bin/criarusuario /bin/expcleaner /bin/sshlimiter /bin/addhost /bin/listar /bin/sshmonitor /bin/ajuda > /dev/null
  rm -rf /root/ExpCleaner.sh /root/CriarUsuario.sh /root/sshlimiter.sh > /dev/null
  echo "Removendo PackSSH..."
  sleep 3
  rm -rf /bin/alterarlimite /bin/alterarsenha /bin/Banner /bin/ClearCache /bin/ConfVPS /bin/CpuMonitor /bin/criarusuario >/dev/null
  rm -rf /bin/DadosMonitor /bin/delhost /bin/expcleaner /bin/LimiterSSH /bin/MonitorTotal.sh /bin/mudardata /bin/MudarLimite >/dev/null
  rm -rf /bin/MudarSenha /bin/MudarValidade /bin/OpenUDP /bin/OpenVPN /bin/PackSSH /bin/remover /bin/SpeedTest /bin/limite >/dev/null
  rm -rf /bin/UserBackup /bin/UserClear /bin/UserCreate /bin/UserDel /bin/UserMonitor /bin/VNC >/dev/null
  clear;;
 13)
  bash MenuVPS.sh
  clear;; 
 14)
  bash ConfVPS14.sh
  clear;;   
esac
