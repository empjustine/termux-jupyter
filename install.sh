#!/bin/bash

set -e
set -u
set -o pipefail

cd ~/jupyter
apt install python python-dev clang libzmq libzmq-dev
pip install --user pipenv
LDFLAGS=" -lm -lcompiler_rt" pipenv install jupyter
