{ mkDerivation, base, containers, req, stdenv, text }:
mkDerivation {
  pname = "foo";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base containers req text ];
  license = "unknown";
  hydraPlatforms = stdenv.lib.platforms.none;
}
