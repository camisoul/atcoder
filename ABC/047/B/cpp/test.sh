#!/usr/bin/env bash

if [ -n "${ZSH_VERSION:-}" ]; then
  emulate -R ksh
  set -o bsdecho
elif [ -n "${BASH_VERSION:-}" ]; then
  shopt -s expand_aliases extglob globstar lastpipe
elif [ -n "${KSH_VERSION:-}" ]; then
  set -o globstar
fi

set -euo pipefail

./main < ../test.txt
