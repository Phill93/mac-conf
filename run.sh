#!/bin/bash

if [ -n `which pip` ]; then
  sudo easy_install pip
fi

if [ -n `which ansible` ]; then
  sudo pip install -H ansible
fi

ansible-galaxy install -r requirements.yml
ansible-playbook desktop.yml