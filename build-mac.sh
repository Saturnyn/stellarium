#!/usr/bin/env bash

echo "###START"
cd /Users/yann/git/stellarium/builds/macos
rm -r Stellarium.app/
echo "###: cmake ../.."
cmake ../..
echo "###: make -j6"
make -j6
echo "###: make install"
make install
echo "###: make mac_app"
make mac_app
echo "###: killall stellarium"
killall stellarium
echo "###: open Stellarium.app"
open Stellarium.app