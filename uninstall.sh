#! /bin/bash

# Remove soft link 'ctree' from /bin/ directory.
sudo rm /bin/ctree

# Remove 'ctree.sh' from /usr/bin/ directory.
sudo rm /usr/bin/ctree.sh

# purge dependencies.
sudo apt purge tree cowsay toilet

# autoremove remaining files of dependencies.
sudo apt autoremove
