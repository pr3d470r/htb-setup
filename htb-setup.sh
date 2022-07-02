#!/bin/sh
echo hello world
working_directory=$(pwd)
apt-get update
apt-get install -y ghidra
apt-get install -y gdbserver
git clone https://github.com/pwndbg/pwndbg.git
pwndbg/./setup.sh
echo source $working_directory/pwndbg/gdbinit.py > .gdbinit
