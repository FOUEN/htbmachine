#!/bin/bash

#Variables
HTB_PATH="$HOME/htb"
name_file="$1"
file_path="$HOME/htb/$name_file"

#Funciones
function createFile() {
  if [ -d "$file_path" ]; then

    echo -e "\n> The directory you are trying to create already exists, I'll send you there ;)\n" && cd $file_path

  else

    mkdir -p $file_path && echo -e "\n> Directory '$name_file' created\n" && cd $file_path
  
  fi
}

function verify() {

  if [ -d $HTB_PATH ]; then

    createFile

  else

    mkdir $HTB_PATH
    createFile

  fi
}

function main() {
  verify
}

if [ -z "$1" ]; then
  echo -e "\n <> Usage: machine.sh <machine_name>\n"

else
  main

fi
