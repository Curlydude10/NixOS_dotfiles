#!/bin/sh
pushd ~/.NixOSdotfiles
sudo nixos-rebuild switch -I nixos-config=./system/configuration.nix
popd
