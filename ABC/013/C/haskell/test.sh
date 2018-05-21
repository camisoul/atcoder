#!/usr/bin/env bash

set -euo pipefail

[[ $(./main < ../test1.txt) == 160 ]] && echo "test1 ok" || echo "test1 wa"
[[ $(./main < ../test2.txt) == 20000 ]] && echo "test2 ok" || echo "test2 wa"
[[ $(./main < ../test3.txt) == 650 ]] && echo "test3 ok" || echo "test3 wa"
[[ $(./main < ../test4.txt) == 2818162 ]] && echo "test4 ok" || echo "test4 wa"
