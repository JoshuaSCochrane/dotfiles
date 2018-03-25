#!/bin/bash

# bring the system up to date
sudo apt-get -y update
sudo apt-get -y upgrade

# c dev tools
sudo apt-get -y install gcc gdb make automake cmake valgrind
sudo apt-get -y install llvm clang
sudo apt-get -y install flawfinder splint
sudo apt-get -y install sloccount

# various system tools
sudo apt-get -y install perl cpanminus vim git zsh tmux stow dconf-cli git-email htop
sudo apt-get -y libtool libtool-bin libcurl4-openssl-dev libssl-dev libgpgme11 libgpgme11-dev
# 16.04 currently needs backports for libarchive-dev libarchive13, apt-cache policy <package-name> to check avail

# all python packages that we need
# PYTHON="python python-pip python-dev python-flake8 python-mccabe python-coverage" # python2 is no longer needed TODO make sure
sudo apt-get -y install python3 python3-pip python3-dev python3-flake8 python3-mccabe python3-coverage
sudo apt-get -y install python3-venv
sudo pip install conan
sudo pip install polysquare-cmake-linter

# network tools
sudo apt-get -y install wget curl tshark wireshark lua5.1

# software engineering tools
sudo apt-get -y install umlet doxygen markdown

# debian packaging
sudo apt-get install dpkg dpkg-cross dpkg-dev dpkg-repack dpkg-sig

# stuff I picked up at work
sudo apt-get -y install graphviz tree ack-grep exuberant-ctags clang-format colordiff
sudo apt-get -y install jsonlint shellcheck

# development lib for cmake dev
sudo apt-get -y install libncurses5-dev

# install rr from mozilla
#cd /tmp
#wget https://github.com/mozilla/rr/releases/download/4.2.0/rr-4.2.0-Linux-$(uname -m).deb
#sudo dpkg -i rr-4.2.0-Linux-$(uname -m).deb

sudo apt-get -y install docker-ce

# the default vim does not support the system clipboard, alias is in .zshrc
sudo apt-get -y install vim-gtk3

# necessary for google drive client
sudo apt-get -y install golang
sudo add-apt-repository -y ppa:twodopeshaggy/drive
sudo apt-get update
sudo apt-get install drive

# programs for user convenience
sudo apt-get -y install keychain xclip keepassx

## below this line is stuff we used to need, but no longer do
# ruby programs
# sudo gem install dpl # continuous deployment tool
# sudo gem install tmuxinator

# add gitlab repo's to apt-get
# sudo curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.deb.sh | sudo bash
# Install gitlab-ci-multi-runner:
# sudo apt-get install gitlab-ci-multi-runner

# heroku and dependencies
# HEROKU="ruby ruby2.0"
# sudo apt-get -y $HEROKU
# wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# tools for web dev
# WEB="postgresql rhino nodejs npm poedit"
# PYTHON_DATABASE="postgresql-server-dev-all libpq-dev"
# sudo apt-get -y install $WEB $PYTHON_DATABASE

# packages required to build contiki, not into contiki anymore, no longer like 802.15.4 :D
# CONTIKI="build-essential binutils-msp430 gcc-msp430 msp430-libc binutils-avr gcc-avr gdb-avr avr-libc avrdude openjdk-7-jdk openjdk-7-jre ant libncurses5-dev"
# sudo apt-get -y install $CONTIKI
