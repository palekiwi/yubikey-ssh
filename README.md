# Setup Yubikey for SSH aunthentication

Required variables:

    hostname: string

1. Run script to install ansible:
    `sh ./scripts/install_ansible.sh`

2. Run playbooks/main.yml
    `ansible-playbook playbooks/main.yml -e "hostname=<hostname>" --ask-become-pass --ask-vault-pass`

3. Make sure to trust the key:
    `gpg --edit-key <key>`
