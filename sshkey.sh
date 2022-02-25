#!/bin/bash

read -p "Input user email: " EMAIL
cd || exit
ssh-keygen -t rsa -C ${EMAIL}

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub
