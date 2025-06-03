# Toolkit

**Essential Toolkit for New Linux Devices**

This repository collects all the APT packages and PIP libraries you need to set up a fresh Linux machine—especially focused on security, development, and data analysis.  

Browse the GitBook chapters to find the category you need, then copy the installation commands into your terminal.

---

# Summary

* [Home](docs/index.md)
* [1. Introduction](docs/1-introduction/README.md)
  * [1.1 How to Use This Repo](docs/1-introduction/how-to-use.md)
* [2. APT](docs/2-apt/README.md)
  * [2.1 System & Basic Utilities](docs/2-apt/2.1-system-utilities.md)
  * [2.2 Network & Sniffing](docs/2-apt/2.2-network-sniffing.md)
  * [2.3 Pen-Testing & CTF](docs/2-apt/2.3-pen-testing-ctf.md)
  * [2.4 Reverse Engineering](docs/2-apt/2.4-reverse-engineering.md)
  * [2.5 Containerization](docs/2-apt/2.5-containerization.md)
  * [2.6 Other Utilities](docs/2-apt/2.6-other-utilities.md)
* [3. PIP](docs/3-pip/README.md)
  * [3.1 CTF / Reverse Engineering](docs/3-pip/3.1-ctf-reverse.md)
  * [3.2 Web Scraping & APIs](docs/3-pip/3.2-web-scraping-api.md)
  * [3.3 Data Analysis](docs/3-pip/3.3-data-analysis.md)
  * [3.4 Crypto & Security](docs/3-pip/3.4-crypto-security.md)
  * [3.5 Generic Utilities](docs/3-pip/3.5-generic-utilities.md)

---

## Auto-Install Script

A Bash script named `install_all_tools.sh` is provided at the root. It reads two wordlist files—`all_apt_tools.txt` and `all_pip_tools.txt`—and installs every package listed:

1. First, generate those wordlist files by following the **“Dump All Tool Names”** instructions on the Home page of this GitBook.
2. Make the script executable and run it:
   ```bash
   chmod +x install_all_tools.sh
   ./install_all_tools.sh
