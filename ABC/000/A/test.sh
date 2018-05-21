#!/bin/sh

set -eu

./haskell/main < input.txt
./c/main < input.txt
./cpp/main < input.txt
