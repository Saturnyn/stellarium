#!/usr/bin/env bash

echo "###START BUILD"
echo "###: remove Stellarium.app"
cd /Users/yann/git/stellarium/builds/macos
chmod -R 755 Stellarium.app
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