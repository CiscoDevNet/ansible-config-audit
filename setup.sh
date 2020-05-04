git clone https://github.com/securenetwrk/gold_config.git
cd gold_config
pip install -r requirements.txt
#ansible-galaxy collection install cisco.ios
#ansible-galaxy collection install cisco.ios:0.0.3-dev8
ansible-galaxy collection install -r requirements.yml -p ./


# ansible-playbook 1_auditv2.yml -C -v
