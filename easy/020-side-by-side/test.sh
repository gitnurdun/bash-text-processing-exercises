#!/usr/bin/env bash
cd "$(dirname "$0")"
if [ ! -f answer.txt ]; then echo fail; exit 1; fi
a=$(cat answer.txt)
b=$(cat <<'__EXPECTED_$EOF__'
apple	apple
banana	banana
apple	apple
Cherry	Cherry
banana	banana
apple	apple
mango	mango
Cherry	Cherry
kiwi	kiwi
banana	banana
mango	mango
apple	apple
__EXPECTED_$EOF__
)
if [ "$a" = "$b" ]; then echo pass; else echo fail; fi
exit 0
