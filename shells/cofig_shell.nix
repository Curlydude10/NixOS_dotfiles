{ pkgs ? import <nixpkgs> { } }:

  pkgs.mkShell {
    name = "Configuration Management Shell";
    buildInputs = with pkgs; [
      nixFlakes
    ];

    shellHook = ''
      echo "Welcome to the Configuration Management Shell"
    '';
  }
