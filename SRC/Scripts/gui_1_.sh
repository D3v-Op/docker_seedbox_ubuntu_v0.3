#!/bin/bash



###########################################################################################################################################################################################################################################################################################################################################################################################



echo ; \
echo ; \
echo ; \
echo ' ⟩   Gui_1_.sh ... ' ; \
echo ; \
echo ; \
echo

### Setting Up Chrome Remote Desktop

apt-get -qq update && \
wget \
  https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb \
    -O /path/ && \
cd /path/ && \
dpkg --install chrome-remote-desktop_current_amd64.deb && \
apt-get -qqy install --fix-broken && \
apt-get -qq update && \
DEBIAN_FRONTEND=noninteractive \
apt-get -qqy install \
  desktop-base \
  xfce4 \
  xscreensaver && \
bash -c \
  'echo \
    "exec /etc/X11/Xsession /usr/bin/xfce4-session" \
      > /etc/chrome-remote-desktop-session'
###

###########################################################################################################################################################################################################################################################################################################################################################################################



