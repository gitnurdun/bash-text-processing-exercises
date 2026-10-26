#!/usr/bin/env bash
cd "$(dirname "$0")"
if [ ! -f answer.txt ]; then echo fail; exit 1; fi
a=$(cat answer.txt)
b=$(cat <<'__EXPECTED_$EOF__'
Hello world, hello bash scripting!
WARNING: backup delayed by 5 minutes
The rain in Spain falls mainly on the plain.
Keep 3 spaces   between   words here
__EXPECTED_$EOF__
)
if [ "$a" = "$b" ]; then echo pass; else echo fail; fi
exit 0
