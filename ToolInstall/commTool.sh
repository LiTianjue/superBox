#!/bin/bash

# 首先安装vim及配置vim
apt-get install vim
cp vimrc ~/.vimrc

# ------------------------------------------

# 配置我的git
apt-get install git
git config --global user.name "LiTianjue"
git config --global user.email "mhpmii@126.com"
git config --global color.ui true
git config --global core.editor vim
git config --list

# new ssh key
# ssh-keygen -t rsa -b 4096 -C "mhpmii@126.com"
# cat ~/.ssh/id_rsa



# 设置环境变量
alias ls='ls --color'
alias grep='grep --color'

# 安装samba 

# 安装DosToUnix 工工具
apt-get install dos2unix

# 安装常见的编译环境
apt-get install build-essential
apt-get install bison
apt-get install flex
apt-get install swig
apt-get install pkg-config
apt-get install autoconf automake libtool
#开发库
apt-get install libssl-dev
apt-get install libpcap-dev
apt-get install zlb1g-dev
apt-get install python-dev

