#ECHO COLORS
red="`tput setaf 1`"
green="`tput setaf 2`"
cyan="`tput setaf 6`"
bold="`tput bold`"
norm="`tput sgr0`"
magen="`tput setaf 5`"

# START COMMAND
clear
echo "        ░▒█▀▀▀█░▒█▀▀▀░▒█░░▒█░▒█▀▀▀"
echo "        ░░▀▀▀▄▄░▒█▀▀▀░░▒█▒█░░▒█▀▀▀"
echo "        ░▒█▄▄▄█░▒█▄▄▄░░░▀▄▀░░▒█▄▄▄"
read -n 1 -s -r -p "Press ${green}Enter Key${norm} to continue Or Press ${red}CTRL + C${norm} to stop"
echo "[ ████===============] 25% Please Wait..."
sleep 1
clear
echo "[ ███████==========] 52% Please Wait..."
sleep 1
clear
echo "[ ███████████===] 80% Please Wait..."
sleep 1
clear
echo "[ █████████████ ] 100% Done..."
sleep 1
clear
echo "${green}Start Install In ${norm} ╔═══╗"
echo "                  ║╔═╗║"
echo "                  ╚╝╔╝║"
echo "                  ╔╗╚╗║"
echo "                  ║╚═╝║"
echo "                  ╚═══╝"
#SLEEP 1
sleep 1
clear
#IN SECONDS 1
echo "${cyan}Start Install In ${norm} ╔═══╗"
echo "                  ║╔═╗║"
echo "                  ╚╝╔╝║"
echo "                  ╔═╝╔╝"
echo "                  ║║╚═╗"
echo "                  ╚═══╝"
#SLEEP 1
sleep 1
clear
#IN SECONDS 1
echo "${magen}Start Install In ${norm}   ╔╗ "
echo "                  ╔╝║ "
echo "                  ╚╗║ "
echo "                    ║║ "
echo "                  ╔╝╚╗"
echo "                  ╚══╝"
#SLEEP 1
sleep 1
clear
#IN SECONDS 1
#GAWA NI SEVE
clear
sudo echo
#Run1
sudo touch /etc/apt/sources.list.d/trusty_sources.list
echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty main universe" | sudo tee --append /etc/apt/sources.list.d/trusty_sources.list > /dev/null 

#Update Natin
sudo apt update

#Install Natin Ang Squid
sudo apt install -y squid3=3.3.8-1ubuntu6 squid=3.3.8-1ubuntu6 squid3-common=3.3.8-1ubuntu6

#Install Ang Ghost/Missing
wget https://gist.githubusercontent.com/1nikolas/1cd2aa0839a917b7306bafa7559d266c/raw/21f78cba2e1486aa84b9bfefc220857189b19a6a/squid3
sudo cp squid3 /etc/init.d/
sudo chmod +x /etc/init.d/squid3
sudo update-rc.d squid3 defaults

# Clean All Comments
grep -o '^[^#]*' /etc/squid3/squid.conf
# Clean Squid
sed -i '/^/d' /etc/squid3/squid.conf
#Start squid
sudo service squid3 start 
#Cleanup
rm squid3
#Print info
clear
echo "====================================="
echo "Squid 3.3.8 is successfully installed!"
echo "Squid's config is located at '/etc/squid3/squid.conf'"
echo "You can start/stop/restart squid by using 'sudo service squid3 start/stop/restart'"
echo "${green}============AUTO SCRIPT BY SEVE============${norm}"
echo "====================================="
