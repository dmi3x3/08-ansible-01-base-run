# Самоконтроль выполненения задания

1. Где расположен файл с `some_fact` из второго пункта задания?
```shell
/group_vars/all/examp.yml
```
3. Какая команда нужна для запуска вашего `playbook` на окружении `test.yml`?

```shell
ansible-playbook -i inventory/test.yml site.yml
```

4. Какой командой можно зашифровать файл?

```shell
ansible-vault encrypt /path-to/filename
```

5. Какой командой можно расшифровать файл?

```shell
ansible-vault decrypt /path-to/filename
```

6. Можно ли посмотреть содержимое зашифрованного файла без команды расшифровки файла? Если можно, то как?


```shell
Да
ansible-vault view /path-to/filename
```

7. Как выглядит команда запуска `playbook`, если переменные зашифрованы?

```shell
ansible-playbook -i inventory/prod.yml site.yml --vault-password-file password-file
ansible-playbook -i inventory/prod.yml site.yml --ask-vault-pass
```
8. Как называется модуль подключения к host на windows?

```
psrp
```

9. Приведите полный текст команды для поиска информации в документации ansible для модуля подключений ssh

```shell
ansible-doc -t connection ssh
```

10. Какой параметр из модуля подключения `ssh` необходим для того, чтобы определить пользователя, под которым необходимо совершать подключение?

```shell
- remote_user
        User name with which to login to the remote server, normally set by the remote_user keyword.
        If no user is supplied, Ansible will let the ssh client binary choose the user as it normally
        [Default: (null)]
        set_via:
          env:
          - name: ANSIBLE_REMOTE_USER
          ini:
          - key: remote_user
            section: defaults
          vars:
          - name: ansible_user
          - name: ansible_ssh_user
```