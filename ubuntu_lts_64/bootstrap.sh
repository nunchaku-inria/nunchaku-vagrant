#!/usr/bin/env sh

sudo apt-get update
yes | sudo apt-get install make ocaml git make patch m4 unzip packup

cd /tmp/
wget https://github.com/ocaml/opam/releases/download/1.2.2/opam-full-1.2.2.tar.gz
tar xvf opam-full-1.2.2.tar.gz
cd opam-full-1.2.2
./configure
make lib-ext
make
sudo make install

su vagrant -c /vagrant/bootstrap-user.sh
