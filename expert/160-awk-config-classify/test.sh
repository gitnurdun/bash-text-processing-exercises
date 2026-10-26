#!/usr/bin/env bash
cd "$(dirname "$0")"
if [ ! -f answer.sh ]; then echo fail; exit 1; fi
a=$(bash answer.sh 2>/dev/null)
b=$(cat <<'__EXPECTED_$EOF__'
SAME k1
CHANGED k2
OLD_ONLY k3
NEW_ONLY k4
__EXPECTED_$EOF__
)
if [ "$a" = "$b" ]; then echo pass; else echo fail; fi
exit 0
