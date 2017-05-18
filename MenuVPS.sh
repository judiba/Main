#BY: @judiba
#R3V1V3R VPS
#Data de criação: 22/04/2017
#Nome: MenuVPS - PackVPS 2.0"
clear
echo -e "\033[01;34mMenuVPS"
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

tput setaf 8 ; tput setab 5 ; tput bold ; printf '%30s%s%-15s\n' "MenuVPS 1.0" ; tput sgr0
echo ""
echo -e "\033[01;34mOBS: Digite - MenuVPS - para acessar esse MENU.\033[0m"
echo ""
echo -e "\033[01;34mEscolha uma opção: Para Sair Ctrl + C \033[0m"
echo ""
echo -e "\033[1;33m[00]\033[01;32m•=> PackVPS00 (CONFIGURAÇÕES E INSTALAÇÕES DA VPS) \033[0m"
echo -e "\033[1;33m[01]\033[01;32m•=> MenuVPS01 (BANNER - Mensagem para Usuario Quando Conectar)\033[0m"
echo -e "\033[1;33m[02]\033[01;32m•=> MenuVPS02 (CpuMonitor - Monitora o Uso da CPU, RAM e UPTIME)\033[0m"
echo -e "\033[1;33m[03]\033[01;32m•=> MenuVPS03 (DadosMonitor - Monitora o Uso de Dados/Banda|in||out|)\033[0m"
echo -e "\033[1;33m[04]\033[01;32m•=> MenuVPS04 (ClearCache - Limpa Cache e Swap da Maquina)\033[0m"
echo -e "\033[1;33m[05]\033[01;32m•=> MenuVPS05 (Addhost - Adiciona Novo Host ao Squid)\033[0m"
echo -e "\033[1;33m[06]\033[01;32m•=> MenuVPS06 (OpenUDP - Libera a Porta UDP para Ligacão e Jogos)\033[0m"
echo -e "\033[1;33m[07]\033[01;32m•=> MenuVPS07 (SpeedTest - Testa a Velocidade de Link do Servidor)\033[0m"
echo -e "\033[1;33m[08]\033[01;32m•=> MenuVPS08 (UserCreate - Criar Usuarios SSH e VPN)\033[0m"
echo -e "\033[1;33m[09]\033[01;32m•=> MenuVPS09 (Limiter - Limita as Conexoes de Cada Usuario SSH e VPN)\033[0m"
echo -e "\033[1;33m[10]\033[01;32m•=> MenuVPS10 (MudarLimite - Muda o Limite do Usuario SSH e VPN)\033[0m"
echo -e "\033[1;33m[11]\033[01;32m•=> MenuVPS11 (MudarSenha - Muda a Senha do Usuario SSH e VPN)\033[0m"
echo -e "\033[1;33m[12]\033[01;32m•=> MenuVPS12 (MudarValidade - Muda a Data de Validade do Usuario SSH e VPN)\033[0m"
echo -e "\033[1;33m[13]\033[01;32m•=> MenuVPS13 (UserDel - Deleta Usuario SSH e VPN)\033[0m"
echo -e "\033[1;33m[14]\033[01;32m•=> MenuVPS14 (UserTestSSH - Criar Usuarios de Teste SSH)\033[0"
echo -e "\033[1;33m[15]\033[01;32m•=> MenuVPS15 (UserTestVPN - Criar Usuarios de Teste VPN)\033[0m"
echo -e "\033[1;33m[16]\033[01;32m•=> MenuVPS16 (UserClear - Limpa Usuarios Vencidos SSH e VPN)\033[0m"
echo -e "\033[1;33m[17]\033[01;32m•=> MenuVPS17 (UserMonitor - Monitora os Usuarios Conectados)\033[0m"
echo -e "\033[1;33m[18]\033[01;32m•=> MenuVPS18 (UserBackup - Gerencia o Backup da VPS)\033[1;34m"
echo ""
read -p "Selecione o Menu [00-18]: " menu
echo ""
case $menu in
 00)
  bash PackVPS.sh
esac  
 01)
  bash ConfVPS01.sh
  sleep 5
  MenuVPS;;
 02)
  bash MenuVPS02.sh
  MenuVPS;;
 03)
  ConfVPS03
  sleep 5
  MenuVPS;;
 04)
  ConfVPS04
  sleep 5
  MenuVPS;;
 05)
  ConfVPS05
  sleep 5
  MenuVPS;;
 06)
  ConfVPS06
  sleep 5
  MenuVPS;;
 07)
  ConfVPS07
  sleep 5
  MenuVPS;;
 08)
  ConfVPS08
  sleep 5
  MenuVPS;;
 09)
  ConfVPS09
  sleep 5
  MenuVPS;;
 10)
  ConfVPS10
  sleep 5
  MenuVPS;;
 11)
  ConfVPS11
  sleep 5
  MenuVPS;;
 12)
  ConfVPS12
  sleep 5
  MenuVPS;;
 13)
  ConfVPS13
  sleep 5
  MenuVPS;;
 14)
  ConfVPS14
  sleep 5
  MenuVPS;;
 15)
  ConfVPS15
  sleep 5
  MenuVPS;;
esac  