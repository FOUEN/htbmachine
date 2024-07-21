#!/bin/sh

#Variables
shell="$(echo "$SHELL" | tr "/" " " | awk '{print$NF}')"
config_file=".$shell""rc"
config_rute="$HOME/$config_file"

#Funciones
function edit_config(){
  echo "alias machine.sh='source machine.sh'" >> $config_rute && echo "> Install completed, reboot terminal to complete changes"
}

function move(){
  sudo cp ./machine.sh /usr/bin/
  edit_config
}

function main(){
  move
}

main

