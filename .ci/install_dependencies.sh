#!/usr/bin/env bash
set -vexu

install_root=$1

apt-get update
apt-get install -y software-properties-common
apt-add-repository universe
apt-get update

apt-get install -y \
  build-essential \
  git \
  libbz2-dev \
  libcurl4-gnutls-dev \
  liblzma-dev \
  python3 \
  python3-pip \
  python3-setuptools \
  python3-dev \

pip3 install tox

if [ ! -d $install_root ]; then
  mkdir $install_root
fi
cd $install_root

#________________________ minimap2 __________________________#
cd $install_root
git clone https://github.com/lh3/minimap2.git minimap2_git
cd minimap2_git
git checkout 4dfd495cc2816f67556bc6318654e572636ee40a
make
cd ..
cp -s minimap2_git/minimap2 .
