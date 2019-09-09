#! /bin/bash

# Uninstall ctree first.
sudo bash uninstall.sh

echo -e "[*] Installing dependencies...\n"
# Install dependencies.
sudo apt install tree cowsay toilet
echo -e "[+] Dependencies uninstalled.\n"

echo -e "[*] Installing ctree...\n"
# Make 'ctree.sh' executable.
sudo chmod -v 755 ctree.sh

# Copy 'ctree.sh' to /usr/bin/ directory.
sudo cp -v ctree.sh /usr/local/bin/

# Make soft link for /usr/bin/ctree.sh to /bin/ctree
sudo ln -vs /usr/local/bin/ctree.sh /bin/ctree

# Copy About folder to your Home directory.
sudo cp -vr About/ $HOME/.ctree
echo -e "[+] ctree installed successfully."
