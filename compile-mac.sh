#!/usr/bin/env bash

echo "###START COMPILE"
cd /Users/yann/git/stellarium/builds/macos

echo "###: remove Stellarium.app"
chmod -R 755 Stellarium.app
rm -r Stellarium.app/

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