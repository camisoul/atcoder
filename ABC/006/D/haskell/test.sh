#!/usr/bin/env bash

set -euo pipefail

[[ $(./main < ../test1.txt) == 2 ]] && echo "test1 ok" || echo "test1 wa"
[[ $(./main < ../test2.txt) == 4 ]] && echo "test2 ok" || echo "test2 wa"
[[ $(./main < ../test3.txt) == 0 ]] && echo "test3 ok" || echo "test3 wa"
