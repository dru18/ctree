#! /bin/bash

# Install dependencies.
sudo apt install cowsay toilet

# Make 'ctree.sh' executable.
sudo chmod 755 ctree.sh

# Copy 'ctree.sh' to /usr/bin/ directory.
sudo cp ctree.sh /usr/bin/

# Make soft link for /usr/bin/ctree.sh to /bin/ctree
sudo ln -s /usr/bin/ctree.sh /bin/ctree
