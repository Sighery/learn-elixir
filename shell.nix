with import <nixpkgs> {};

let
  pkgs_fix = import (builtins.fetchGit {
    name = "23.05";
    url = "https://github.com/NixOS/nixpkgs.git";
    ref = "release-23.05";
    rev = "879e5b966a21be8a6232f0b290a30504b883f729";
  }) {};

in stdenv.mkDerivation {
  name = "pip-env";
  buildInputs = [
    # System requirements.
    stdenv.cc.cc.lib
    readline
    gettext
    lzma
    xz
    zlib

    erlang_26
    elixir
  ];
  src = null;
}
