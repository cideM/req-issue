# https://github.com/Gabriel439/haskell-nix/pull/72
let
  sources = import ./nix/sources.nix;

  nixpkgs = import sources.nixpkgs { };

in
nixpkgs.mkShell {
  buildInputs = with nixpkgs.haskellPackages; [
    ghcid
    ghc
    ormolu
    hlint
    cabal2nix
    cabal-install
    cabal-fmt
  ];
}
