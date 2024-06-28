#!/bin/sh
pushd ~/.NixOSdotfiles
sudo nixos-rebuild switch --flake .#Zeus 
popd
