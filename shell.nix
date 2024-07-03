let
hostPkgs = import <nixpkgs> {};
pkgs = import <nixpkgs> {
  crossSystem = (import <nixpkgs/lib>).systems.examples.armv7l-hf-multiplatform;
};
in
    pkgs.mkShell rec {
      depsBuildBuild = [hostPkgs.buildPackages.stdenv.cc ];
      nativeBuildInputs = with hostPkgs.buildPackages; [
        bison
        flex
        elfutils
        bc
        pkg-config
        ncurses
        openssl
      ];
      buildInputs = with pkgs; [ zlib ];
      shellHook = ''
        export CROSS_COMPILE=armv7l-unknown-linux-gnueabihf-
        export ARCH=arm
        export PKG_CONFIG_PATH="${hostPkgs.ncurses.dev}/lib/pkgconfig"
      '';
    }

