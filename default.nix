{ haskellPackages ? (import <nixpkgs> {}).haskellPackages }:
let
  inherit (haskellPackages) cabal cabalInstall;

in cabal.mkDerivation (self: {
  pname = "functional-programming-in-scaskell";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  buildDepends = [

  ];
  buildTools = [ cabalInstall ];
  meta = {
    description = "functional-programming-in-scaskell";
    license = self.stdenv.lib.licenses.gpl3;
    platforms = self.ghc.meta.platforms;
  };
})
