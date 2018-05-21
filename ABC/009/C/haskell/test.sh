#!/bin/sh

set -eu

./main < test1.txt
printf '%s\n' 'actoder'
./main < test2.txt
printf '%s\n' 'dehloworll'
