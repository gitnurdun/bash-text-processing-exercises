#!/usr/bin/env bash
cd "$(dirname "$0")"
if [ ! -f answer.txt ]; then echo fail; exit 1; fi
a=$(cat answer.txt)
b=$(cat <<'__EXPECTED_$EOF__'
192.168.1.10
10.0.0.5
192.168.1.10
10.0.0.5
172.16.0.3
192.168.1.10
172.16.0.3
10.0.0.5
192.168.1.10
172.16.0.3
10.0.0.5
192.168.1.10
__EXPECTED_$EOF__
)
if [ "$a" = "$b" ]; then echo pass; else echo fail; fi
exit 0
