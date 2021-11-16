#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

chmod +x ./secureboot-keys-manager

cp ./secureboot-keys-manager /sbin
cp ./95-secureboot-keys-manager.hook /etc/pacman.d/hooks

echo "Installed files"
