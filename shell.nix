{nixpkgs ? null}:
let
  pinnedPkg = (import <nixpkgs> {}).fetchFromGitHub {
    owner = "NixOS";
    repo = "nixpkgs";
    rev = "3d5e451f0543108c6cabb028e64c5704dc1f3574";
    sha256 = "05880a8j3j6ar4c77khk1yhkm4b2m6hp282cwj4jjhaviz8v8qs2";
  };
  pkgs = if nixpkgs==null then
           import pinnedPkg {}
         else
           import <nixpkgs> {};
in with pkgs; python27Packages.buildPythonPackage rec {
  name = "f2pyExamples";
  src = ./.;
  buildInputs = [ 
    gfortran
  ];
  propagatedBuildInputs = with pythonPackages; [ 
    numpy
  ];
}
