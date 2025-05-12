#!/bin/bash
clear

# version
# ansible --version

# ping all hosts, include only workstation1 
# one host? apend comma!
# ansible all -i workstation1, -m ping

# ping all hosts (from inventory)
# ansible all -m ping

# Test für Befehl, der sudo-Rechte benötigt
# ansible all -a "test -r /etc/shadow"

# Test für command-Modul
# Ausführlich
#ansible all -m command -a "df -h /"
# Kurz (command-Modul ist Default)
#ansible all -a "df -h /"

# Test für shell-Modul
#ansible all -m shell -o -a "ps -ef | wc -l"

# --------------------------------------------------
# Playbooks

# Tasks des Playbooks auflisten
#ansible-playbook --list-tasks ./playbooks/hello-ansible.yaml

# Komplette Ausführung
#ansible-playbook ./playbooks/hello-ansible.yaml

# Schritweise Ausführung
# ansible-playbook --step ./playbooks/hello-ansible.yaml

# Alle tasks mit Tag "bye" ausführen
ansible-playbook -t bye ./playbooks/hello-ansible.yaml
