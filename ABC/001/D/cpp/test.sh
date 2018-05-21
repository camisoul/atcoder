#!/usr/bin/env bash

set -euo pipefail

for i in 1 2 3; do
  if cmp <(./main < ../test${i}.txt) "../test${i}.ans"; then
    echo "test${i} ok"
  else
    echo "test${i} wa"
  fi
done
