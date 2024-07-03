{ pkgs ? import <nixpkgs> {} }:


(pkgs.buildFHSUserEnv {
  name = "fhs";
  targetPkgs = pkgs: with pkgs; [
    pkgs.linux_6_6.dev
    gcc
    gnumake
    gnupg
  ];
  profile = ''export FHS=1'';
  runScript = "bash";
}).env
