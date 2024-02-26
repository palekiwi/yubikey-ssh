# Setup Yubikey for SSH aunthentication

Required variables:

    hostname: string

1. Run script to install ansible:
    `sh ./scripts/install_ansible.sh`

2. Run playbooks/main.yml
    `ansible-playbook playbooks/main.yml -e "hostname=<hostname>" --ask-become-pass`

3. Make sure to trust the key:
    `gpg --edit-key <key>`

4. Run playbooks/tailscale_repo.yml to setup repositories.
    `ansible-playbook playbooks/tailscale_repo.yml -e "hostname=<hostname>" --ask-become-pass`

5. Install tailscale
    `rpm-ostree install tailscale`

4. Run playbooks/tailscale_login.yml to setup repositories.
    `ansible-playbook playbooks/tailscale_login.yml -e "hostname=<hostname>" --ask-become-pass --ask-vault-pass`
