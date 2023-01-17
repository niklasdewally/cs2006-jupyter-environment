#!/bin/bash
DIR=$(dirname -- "$0")
cd $DIR # run in directory of the script

rm -rf bin/
rm -rf etc/
rm -rf include/
rm -rf lib/
rm -rf lib64/
rm -rf share/
rm pyvenv.cfg
