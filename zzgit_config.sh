#!/bin/bash
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.br branch

read -p "Input user name: " NAME
read -p "Input user email: " EMAIL
git config --global user.name $NAME 
git config --global user.email $EMAIL
git config -l
