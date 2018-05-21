#!/usr/bin/env bash

if [ -n "${ZSH_VERSION:-}" ]; then
  emulate -R sh
elif [ -n "${BASH_VERSION:-}" ]; then
  set +B -o posix
elif [ -n "${KSH_VERSION:-}" ]; then
  case "${KSH_VERSION}" in
    *LEGACY*KSH*|*BSD*)
      ;;
    *)
      set +B
      ;;
  esac
elif [ -n "${YASH_VERSION:-}" ]; then
  set -o posixly_correct
fi

set -eu

./c/main < test1.txt
./c/main < test2.txt
