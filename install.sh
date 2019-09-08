#! /bin/bash

# Uninstall ctree first.
sudo bash uninstall.sh
# Install dependencies.
sudo apt install tree cowsay toilet

# Make 'ctree.sh' executable.
sudo chmod 755 ctree.sh

# Copy 'ctree.sh' to /usr/bin/ directory.
sudo cp ctree.sh /usr/local/bin/

# Make soft link for /usr/bin/ctree.sh to /bin/ctree
sudo ln -s /usr/local/bin/ctree.sh /bin/ctree

# Make ctree directory in your Home directory.
sudo mkdir $HOME/ctree

# Copy About folder to your Home directory.
sudo cp -r About/ $HOME/ctree
