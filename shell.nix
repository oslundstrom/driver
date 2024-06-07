with (import <nixpkgs> {}) ;
mkShell {
  buildInputs = [
    gcc-arm-embedded
  ];
}

