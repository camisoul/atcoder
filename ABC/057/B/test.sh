#!/usr/bin/env bash

set -eu

echo "haskell"
./haskell/main < test1.txt
./haskell/main < test2.txt
./haskell/main < test3.txt
echo "ruby"
./ruby/test.rb < test1.txt
./ruby/test.rb < test2.txt
./ruby/test.rb < test3.txt
echo "c"
./c/main < test1.txt
./c/main < test2.txt
./c/main < test3.txt
