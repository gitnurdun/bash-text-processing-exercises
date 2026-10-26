#!/usr/bin/env bash
cd "$(dirname "$0")"
if [ ! -f answer.txt ]; then echo fail; exit 1; fi
a=$(cat answer.txt)
b=$(cat <<'__EXPECTED_$EOF__'
x2
x4
x1
x3
__EXPECTED_$EOF__
)
if [ "$a" = "$b" ]; then echo pass; else echo fail; fi
exit 0
