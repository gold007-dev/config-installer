#!/bin/bash

echo "Do you want to pull the latest version?"
read update

regex='^y(es)?$'
update="$(echo "$update" | tr '[:upper:]' '[:lower:]')"

if [[ $update =~ $regex ]]; then
    git pull
fi

echo "copying config files"

cp .bashrc ~/.bashrc
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh

echo "running conditional checks"
bash conditionals.sh
