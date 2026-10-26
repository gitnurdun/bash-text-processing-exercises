#!/usr/bin/env bash
cd "$(dirname "$0")"
if [ ! -f answer.txt ]; then echo fail; exit 1; fi
a=$(cat answer.txt)
b=$(cat <<'__EXPECTED_$EOF__'
Alice Eng 9500 30 Beijing HIGH
Bob Sales 4200 28 Shanghai
Cara Eng 8800 35 Beijing HIGH
Dan Ops 5100 41 Guangzhou
Eve Sales 6300 25 Shenzhen HIGH
Frank Ops 5100 38 Beijing
Grace Eng 12000 45 Shanghai HIGH
Heidi HR 4800 31 Guangzhou
Ivan IT 7200 29 Shenzhen HIGH
Judy IT 7600 33 Beijing HIGH
__EXPECTED_$EOF__
)
if [ "$a" = "$b" ]; then echo pass; else echo fail; fi
exit 0
