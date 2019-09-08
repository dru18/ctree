#!/bin/bash

if [ -z $1 ]; then
tree | toilet -f term -F border --gay
else
  if [ $1 == '--help' ] || [ $1 == '-h' ]; then cat $HOME/ctree/About/Help | toilet -f term --gay
  else
    if [ $1 == '--show' ] || [ $1 == '-s' ]; then cat $HOME/ctree/About/Info | cowsay -f tux | toilet -f term --gay
    else
      if [ $1 == '--version' ] || [ $1 == '-v' ]; then cat $HOME/ctree/About/Release | toilet -f term -F border --gay
      else
        if [ -e $1 ]; then
          if [ -d $1 ]; then
            tree $1 | toilet -f term --gay
          else
            echo "[!] $1 is not a directory."
          fi
        else
          echo "[!] Directory doesn't exists."
        fi
      fi
    fi
  fi
fi
