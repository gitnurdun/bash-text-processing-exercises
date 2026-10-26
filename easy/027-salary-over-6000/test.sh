#!/usr/bin/env bash
cd "$(dirname "$0")"
if [ ! -f answer.txt ]; then echo fail; exit 1; fi
a=$(cat answer.txt)
b=$(cat <<'__EXPECTED_$EOF__'
Alice Eng 9500 30 Beijing
Cara Eng 8800 35 Beijing
Eve Sales 6300 25 Shenzhen
Grace Eng 12000 45 Shanghai
Ivan IT 7200 29 Shenzhen
Judy IT 7600 33 Beijing
__EXPECTED_$EOF__
)
if [ "$a" = "$b" ]; then echo pass; else echo fail; fi
exit 0
