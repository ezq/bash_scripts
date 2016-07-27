#!/bin/bash
# +-------------------------------------------------------------------------+
# | Copyright (C) 2016 Ezequiel M. Cardinali (ezq@fedoraproject.org)        |
# |                                                                         |
# | This program is free software; you can redistribute it and/or           |
# | modify it under the terms of the GNU General Public License             |
# | as published by the Free Software Foundation; either version 3          |
# | of the License, or (at your option) any later version.                  |
# |                                                                         |
# | This program is distributed in the hope that it will be useful,         |
# | but WITHOUT ANY WARRANTY; without even the implied warranty of          |
# | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the           |
# | GNU General Public License for more details.                            |
# +-------------------------------------------------------------------------+
# | http://cardinali.org/                                                   |
# +-------------------------------------------------------------------------+

RELEASE=$(rpm -E %fedora)

dnf install -y http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-${RELEASE}.noarch.rpm
dnf install -y http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-${RELEASE}.noarch.rpm

dnf install -y i3 i3status dmenu xbacklight feh conky xorg-x11-xinit xorg-x11-server-Xorg xorg-x11-drv-evdev xorg-x11-utils xorg-x11-font-utils xorg-x11-fonts-misc xorg-x11-drivers w3m-img w3m ranger highlight libcaca mediainfo poppler poppler-utils atool transmission-cli terminator rsync lightdm-gtk lightdm-gtk-greeter-settings system-switch-displaymanager zathura zathura-plugins-all bash-completion firefox vlc unzip clipit network-manager-applet dunst udiskie pcmanfm screen tmux mc mplayer youtube-dl pavucontrol pulseaudio pulseaudio-utils pulseaudio-module-bluetooth xautolock scrot git make automake gcc xcb-util-devel xcb-util-wm-devel xcb-util-devel xcb-util-wm-devel xcb-util-image-devel pam-devel libev-devel libxkbcommon-devel libxkbcommon-x11-devel cairo-devel htop wget fedora-icon-theme bash-completion 
copr enable region51/rofi
dnf -y install rofi 
dnf -y config-manager --add-repo=http://negativo17.org/repos/fedora-spotify.repo
dnf -y install spotify-client
dnf groupinstall Fonts -y

echo "exec /usr/bin/i3" >> /home/ezq/.xinitrc

