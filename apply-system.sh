#!/bin/sh
rm /home/coltw/.gtkrc-2.0.backup
pushd ~/.NixOSdotfiles
sudo nixos-rebuild switch --flake .#Zeus 
popd
