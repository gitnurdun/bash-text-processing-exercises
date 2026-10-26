#!/usr/bin/env bash
cd "$(dirname "$0")"
if [ ! -f answer.txt ]; then echo fail; exit 1; fi
a=$(cat answer.txt)
b=$(cat <<'__EXPECTED_$EOF__'
Thequickbrownfoxjumpsoverthelazydog.
Helloworld,hellobashscripting!
ERROR:diskspacelowon/dev/sda1
WARNING:backupdelayedby5minutes
Processing100recordsfromfileinput_2024.csv
TheraininSpainfallsmainlyontheplain.
ERROR:connectionrefusedatport8080
Keep3spacesbetweenwordshere
__EXPECTED_$EOF__
)
if [ "$a" = "$b" ]; then echo pass; else echo fail; fi
exit 0
