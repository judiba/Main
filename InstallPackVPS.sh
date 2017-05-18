#BY: @judiba
#R3V1V3R VPS
#Data de criação: 22/04/2017
#Nome: InstallPack - PackVPS 2.0"

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

clear
echo -e "\033[01;34mInstallPack"
echo ""
echo -e "\033[01;36m       BY: @judiba                 
       R3V1V3R VPS                 
       Data de criação: 22/04/2017 
       Nome: PackVPS 2.0           \033[0m"
echo ""
read -p "De enter para continuar..."
clear

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
echo ""
echo ""
echo -e "\033[0;31m INSTALANDO...\033[0;31m"
apt-get update -y 1>/dev/null 2>/dev/null
apt-get install screenfetch -y
apt-get install figlet -y
rm .bashrc
wget https://raw.githubusercontent.com/judiba/Main/master/.bashrc
clear
apt-get install python-pip -y
apt-get install unzip -y
apt-get install sudo -y
apt-get install zip -y
clear
wget https://raw.githubusercontent.com/judiba/Main/master/PackVPS.sh && -O /bin/PackVPS.sh
chmod +x /bin/PackVPS.sh

echo -e "\033[0;31m FINALIZANDO...\033[0;31m"
sleep 2
echo -e '\033[1;34mFinal da instalação...\033[0m'
sleep 3
clear
read -p 'De enter para continuar...'
clear

bash PackVPS.sh
