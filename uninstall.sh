#! /bin/bash

echo -e "[*] Uninstalling ctree...\n"
# Remove soft link 'ctree' from /bin/ directory.
sudo rm -v /bin/ctree

# Remove 'ctree.sh' from /usr/bin/ directory.
sudo rm -v /usr/local/bin/ctree.sh

# Remove ctree/ directory from your Home directory.
sudo rm -vr $HOME/ctree/

# purge dependencies.
sudo apt purge tree cowsay toilet

# autoremove remaining files of dependencies.
sudo apt autoremove
echo -e "\n[+] ctree uninstalled successfully."
