#!/usr/bin/env bash
cd "$(dirname "$0")"
if [ ! -f answer.txt ]; then echo fail; exit 1; fi
a=$(cat answer.txt)
b=$(cat <<'__EXPECTED_$EOF__'
3 alpha.example.com
2 beta.example.com
1 gamma.io
__EXPECTED_$EOF__
)
if [ "$a" = "$b" ]; then echo pass; else echo fail; fi
exit 0
