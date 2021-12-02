#!/bin/bash

git config --global user.name "AllentDan"
git config --global user.email "AllentDan@yeah.net"

cd || exit
ssh-keygen -t rsa -C AllentDan@yeah.net

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub
