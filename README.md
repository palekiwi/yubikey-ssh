# Setup Yubikey for SSH aunthentication

1. Ensure python is installed.

2. Create a directory for python virtual env, eg:
    `mkdir -p ~/.venv/ansible`

3. Create a virtual env for ansible:
    `python -m venv ~/.venv/ansible`

4. Activate virtual env:
    `source ~/.venv/ansible/bin/activate`

5. Install ansible:
    `pip install ansible`

6. Run playbooks/main.yml
    `ansible-playbook playbooks/main.yml`

7. Make sure to trust the key:
    `gpg --edit-key <key>`
