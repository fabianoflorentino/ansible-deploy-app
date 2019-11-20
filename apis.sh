#!/bin/bash

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin

case $1 in
  --create)
    git pull -a
    ansible-playbook apis_create.yml -e ansible_python_interpreter=/usr/bin/python
    ;;
  --apply)
    ansible-playbook apis_apply.yml -e ansible_python_interpreter=/usr/bin/python
    ;;
  --delete)
    ansible-playbook apis_delete.yml -e ansible_python_interpreter=/usr/bin/python
    ;;
    *)
    echo -e "\nUsing: [--create, --apply ,--delete]\n"
    ;;
esac