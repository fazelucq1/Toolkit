#!/usr/bin/env bash
#
# install_all_tools.sh
# Installs every APT and PIP package listed in the generated wordlists.
#

# Ensure wordlist files exist
if [ ! -f all_apt_tools.txt ] || [ ! -f all_pip_tools.txt ]; then
  echo "ERROR: Wordlist files not found."
  echo "Please run the dump commands in docs/index.md to generate 'all_apt_tools.txt' and 'all_pip_tools.txt'."
  exit 1
fi

echo "==== Starting installation of all tools ===="

echo "[1/3] Updating APT package lists..."
sudo apt-get update

echo "[2/3] Installing APT packages (from all_apt_tools.txt)..."
xargs -a all_apt_tools.txt sudo apt-get install -y

echo "[3/3] Installing PIP packages (from all_pip_tools.txt)..."
xargs -a all_pip_tools.txt pip3 install

echo "==== All tools have been installed! ===="
