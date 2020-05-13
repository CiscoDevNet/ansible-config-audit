#!/bin/bash

echo "##################################################################"
echo "# $(tput setaf 2)Downloading source code.... $(tput setaf 7)####################################"
echo "##################################################################"
git clone https://github.com/securenetwrk/gold_config.git
cd gold_config
echo ""
echo "##################################################################"
echo "# $(tput setaf 2)Installing Pip requirements.... $(tput setaf 7)################################"
echo "##################################################################"
pip install -r requirements.txt
#ansible-galaxy collection install cisco.ios
#ansible-galaxy collection install cisco.ios:0.0.3-dev8
echo ""
echo "##################################################################"
echo "#  $(tput setaf 2)Installing Ansible requirements.... $(tput setaf 7)###########################"
echo "##################################################################"
ansible-galaxy collection install -r requirements.yml -p ./
ansible-galaxy install securenetwrk.gold_config -p roles

echo ""
echo "##################################################################"
echo "# $(tput setaf 2)Source code all downloaded. $(tput setaf 7)####################################"
echo "# $(tput setaf 2)Next Steps, run: $(tput setaf 7)###############################################"
echo "# $(tput setaf 4)cd gold_config $(tput setaf 7)#################################################"
echo "# $(tput setaf 4)ansible-playbook 1_audit.yml -C -v $(tput setaf 7)###########################"
echo "##################################################################"

