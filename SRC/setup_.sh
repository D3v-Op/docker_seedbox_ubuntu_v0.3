#!/bin/bash



###########################################################################################################################################################################################################################################################################################################################################################################################



echo ; \
echo ; \
echo ; \
echo ' ⟩   Running setup_.sh ... ' ; \
echo ; \
echo ; \
echo

echo ; \
echo ; \
echo ; \
echo ' ⟩   Running Update , Upgrade , Autoremove & Fixing Missing / Broken ... ' ; \
echo ; \
echo ; \
echo

apt-get -qq update && \
apt-get -qqy autoremove && \
apt-get -qq update && \
apt-get -qqy upgrade && \
apt-get -qq update && \
apt-get -qqy install --fix-missing --fix-broken && \
apt-get -qq update
###



echo ; \
echo ; \
echo ; \
echo ' ⟩  Installing Core / IMP* Libs ... ' ; \
echo ; \
echo ; \
echo

apt-get -qqy install \
      curl \
      htop \
      iputils-ping \
      iptables \
      jq \
      nano \
      sudo \
      systemctl \
      ufw \
      wget && \
apt-get -qq update
###



echo ; \
echo ; \
echo ; \
echo ' ⟩   Installing Required Dependency Libs ... ' ; \
echo ; \
echo ; \
echo

apt-get -qqy install \
      build-essential \
      docker.io \
      make \
      npm \
      python3.9 \
      python3-pip \
      software-properties-common \
      tzdata ; \
apt-get -qq update
###
