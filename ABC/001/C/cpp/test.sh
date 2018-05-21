#!/usr/bin/env bash

set -euo pipefail

[[ $(./main <<<"2750 628") == "W 5" ]]    && echo "test1 ok" || echo "test1 wa"
[[ $(./main <<<"161 8") == "C 0" ]]       && echo "test2 ok" || echo "test2 wa"
[[ $(./main <<<"3263 15") == "NNW 1" ]]   && echo "test3 ok" || echo "test3 wa"
[[ $(./main <<<"1462 1959") == "SE 12" ]] && echo "test4 ok" || echo "test4 wa"
[[ $(./main <<<"1687 1029") == "SSE 8" ]] && echo "test5 ok" || echo "test5 wa"
[[ $(./main <<<"2587 644") == "WSW 5" ]]  && echo "test6 ok" || echo "test6 wa"
[[ $(./main <<<"113 201") == "NNE 3" ]]   && echo "test7 ok" || echo "test7 wa"
[[ $(./main <<<"2048 16") == "SSW 1" ]]   && echo "test8 ok" || echo "test8 wa"

