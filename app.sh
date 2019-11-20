#!/bin/bash

case $1 in
  --create)
    git pull -a
    ansible-playbook app_create.yml
    ;;
  --apply)
    ansible-playbook app_apply.yml
    ;;
  --delete)
    ansible-playbook app_delete.yml
    ;;
    *)
    echo -e "\nUsing: [--create, --apply ,--delete]\n"
    ;;
esac