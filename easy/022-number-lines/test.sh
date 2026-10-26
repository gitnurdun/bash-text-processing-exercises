#!/usr/bin/env bash
cd "$(dirname "$0")"
if [ ! -f answer.txt ]; then echo fail; exit 1; fi
a=$(cat answer.txt)
b=$(cat <<'__EXPECTED_$EOF__'
     1	apple
     2	banana
     3	apple
     4	Cherry
     5	banana
     6	apple
     7	mango
     8	Cherry
     9	kiwi
    10	banana
    11	mango
    12	apple
__EXPECTED_$EOF__
)
if [ "$a" = "$b" ]; then echo pass; else echo fail; fi
exit 0
