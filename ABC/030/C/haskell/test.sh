#!/usr/bin/env bash

set -euo pipefail

[[ $(./main < ../test1.txt) == 2 ]] && echo "ok" || echo "wa"
[[ $(./main < ../test2.txt) == 0 ]] && echo "ok" || echo "wa"
[[ $(./main < ../test3.txt) == 3 ]] && echo "ok" || echo "wa"
