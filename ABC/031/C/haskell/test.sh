#!/usr/bin/env bash

set -euo pipefail

[[ $(./main < ../test1.txt) == 6 ]] && echo "ok" || echo "wa"
[[ $(./main < ../test2.txt) == 10 ]] && echo "ok" || echo "wa"
[[ $(./main < ../test3.txt) == -1 ]] && echo "ok" || echo "wa"

