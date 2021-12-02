#!/bin/bash

cd || exit
ssh-keygen -t rsa -b 4096 -C AllentDan@yeah.net

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub
