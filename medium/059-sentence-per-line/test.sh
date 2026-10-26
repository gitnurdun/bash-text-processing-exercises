#!/usr/bin/env bash
cd "$(dirname "$0")"
if [ ! -f answer.sh ]; then echo fail; exit 1; fi
a=$(bash answer.sh 2>/dev/null)
b=$(cat <<'__EXPECTED_$EOF__'
Alice works in Eng
Bob works in Sales
Cara works in Eng
Dan works in Ops
Eve works in Sales
Frank works in Ops
Grace works in Eng
Heidi works in HR
Ivan works in IT
Judy works in IT
__EXPECTED_$EOF__
)
if [ "$a" = "$b" ]; then echo pass; else echo fail; fi
exit 0
