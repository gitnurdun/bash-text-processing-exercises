#!/usr/bin/env bash
cd "$(dirname "$0")"
if [ ! -f answer.txt ]; then echo fail; exit 1; fi
a=$(cat answer.txt)
b=$(cat <<'__EXPECTED_$EOF__'
Alice Eng 9500 30 Beijing
Bob Sales 4200 28 Shanghai
Dan Ops 5100 41 Guangzhou
Heidi HR 4800 31 Guangzhou
Ivan IT 7200 29 Shenzhen
__EXPECTED_$EOF__
)
if [ "$a" = "$b" ]; then echo pass; else echo fail; fi
exit 0
