#!/bin/bash

echo "##################################################################"
echo "# $(tput setaf 2)Downloading source code.... $(tput setaf 7)####################################"
echo "##################################################################"
git clone https://github.com/CiscoDevNet/ansible-config-audit.git
cd ansible-config-audit
echo ""
echo "##################################################################"
echo "# $(tput setaf 2)Installing Pip requirements.... $(tput setaf 7)################################"
echo "##################################################################"
pip install -r requirements.txt
echo ""
echo "##################################################################"
echo "#  $(tput setaf 2)Installing Ansible requirements.... $(tput setaf 7)###########################"
echo "##################################################################"
ansible-galaxy collection install -p . -r requirements.yml
ansible-galaxy role install -p roles -r requirements.yml

echo ""
echo "##################################################################"
echo "# $(tput setaf 2)Source code all downloaded. $(tput setaf 7)####################################"
echo "# $(tput setaf 2)Next Steps, run: $(tput setaf 7)###############################################"
echo "# $(tput setaf 4)cd ansible-config-audit $(tput setaf 7)#################################################"
echo "# $(tput setaf 4)ansible-playbook 1_audit.yml -C -v $(tput setaf 7)###########################"
echo "##################################################################"

