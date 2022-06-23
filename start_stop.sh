#!/usr/bin/env bash
docker run --name centos7 -d pycontribs/centos:7 /bin/bash -c "while :; do echo 'Press <CTRL+C> to exit.'; sleep 1; done"
docker run --name ubuntu -d pycontribs/ubuntu /bin/bash -c "while :; do echo 'Press <CTRL+C> to exit.'; sleep 1; done"
docker run --name fedora_ -d pycontribs/fedora /bin/bash -c "while :; do echo 'Press <CTRL+C> to exit.'; sleep 1; done"

echo "netology" > ans-vault.key
ansible-playbook -i inventory/prod.yml site.yml --vault-password-file ans-vault.key
rm ans-vault.key

docker stop ubuntu centos7 fedora_ && docker rm ubuntu centos7 fedora_
