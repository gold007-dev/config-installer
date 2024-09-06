#!/bin/bash

read -p "do you want to pull the latest version?" update

regex='^y(es)?$'
update="$(echo "$update" | tr '[:upper:]' '[:lower:]')"

if [[ $update =~ $regex ]]; then
  git pull
fi

cp .bashrc ~/.bashrc
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh