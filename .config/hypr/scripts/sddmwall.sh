#!/bin/bash

sddmback="/usr/share/sddm/themes/corners/backgrounds/leaves.png"
sddmconf="/usr/share/sddm/themes/corners/theme.conf"
slnkwall="$HOME/.cache/swww/HDMI-A-1"

if [ "$(getfacl -p /home/${USER} | grep user:sddm | awk '{print substr($0,length)}')" != "x" ]; then
	echo "granting sddm execution access to /home/${USER}..."
	setfacl -m u:sddm:x /home/${USER}
fi

if [ "$(grep "Background=" "${sddmconf}")" == "Background=\"${slnkwall}\"" ]; then
	echo "setting static sddm background..."
	sed -i "/^Background=/c\Background=\"${sddmback}\"" "${sddmconf}"
else
	echo "setting dynamic sddm background..."
	sed -i "/^Background=/c\Background=\"${slnkwall}\"" "${sddmconf}"
fi
