#!/usr/bin/env bash
cd "$(dirname "$0")"
if [ ! -f answer.txt ]; then echo fail; exit 1; fi
a=$(cat answer.txt)
b=$(cat <<'__EXPECTED_$EOF__'
The quick brown fox jumps over the lazy dog.
Hello world, hello bash scripting!
ERROR: disk space low on /dev/sda1
WARNING: backup delayed by 5 minutes
Processing 100 records from file input_2024.csv
The rain in Spain falls mainly on the plain.
ERROR: connection refused at port 8080
Keep 3 spaces between words here
__EXPECTED_$EOF__
)
if [ "$a" = "$b" ]; then echo pass; else echo fail; fi
exit 0
