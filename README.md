# Ansible Windows + WSL Ubuntu

[Ansible WindowsRM](https://github.com/AlbanAndrieu/ansible-windows/blob/master/files/ConfigureRemotingForAnsible.ps1)
```bash
ansible-galaxy install -r requirements.yml
```

## For Windows.

```bash
ansible-playbook playbooks/setup.yml --ask-vault-pass
```

## For WSL Ubuntu.

```bash
pip install ansible
ansible-pull -U https://github.com/sergio-asenjo/ansible.git main.yml --ask-become-pass --ask-vault-password
```

### Notes.

- Chrome seems to constantly have checksum problems over Chocolatey.
- For the role `ccdc.debloat_windows`, might have to migrate `remove_onedrive` since there's a problem with an after check.
- Might want to double-check if anything is interfering with the capability for videos. After debloating and installing Firefox, videos on certain pages other than YouTube seem to not be able to load, as well as certain types of images.
- A catch for stuff needs to be added.
- `roles/win-debloat/task/main.yml` should be removed as it serves no purpose since it was moved into `playbooks/setup.yml` directly.
- Need to double-check if there's any manual installers missing to include in `tasks/manual-installers.yml`.
- A `windows terminal` config file can be added to `files` to replicate configs (`settings.json`), but I need to figure out a correct path for it.
- Fonts need to properly go into the Fonts folder after download.
- There's a GPG section missing.
