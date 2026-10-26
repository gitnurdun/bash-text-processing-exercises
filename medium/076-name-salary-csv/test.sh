#!/usr/bin/env bash
cd "$(dirname "$0")"
if [ ! -f answer.txt ]; then echo fail; exit 1; fi
a=$(cat answer.txt)
b=$(cat <<'__EXPECTED_$EOF__'
Alice,9500
Bob,4200
Cara,8800
Dan,5100
Eve,6300
Frank,5100
Grace,12000
Heidi,4800
Ivan,7200
Judy,7600
__EXPECTED_$EOF__
)
if [ "$a" = "$b" ]; then echo pass; else echo fail; fi
exit 0
