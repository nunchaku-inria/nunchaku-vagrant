#!/usr/bin/env sh

# setup as user

yes | opam init
eval `opam config env`

opam sw 4.02.3
eval `opam config env`

cd ~
mkdir workspace
cd workspace/
git clone https://github.com/nunchaku-inria/nunchaku.git
cd nunchaku
git pull
yes | opam pin add -k git nunchaku .
make



