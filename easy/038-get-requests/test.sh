#!/usr/bin/env bash
cd "$(dirname "$0")"
if [ ! -f answer.txt ]; then echo fail; exit 1; fi
a=$(cat answer.txt)
b=$(cat <<'__EXPECTED_$EOF__'
192.168.1.10 GET /index.html 200 12ms
192.168.1.10 GET /about.html 200 9ms
172.16.0.3 GET /index.html 500 145ms
192.168.1.10 GET /style.css 200 5ms
10.0.0.5 GET /contact.html 404 7ms
192.168.1.10 GET /api/data 200 40ms
172.16.0.3 GET /index.html 200 15ms
192.168.1.10 GET /about.html 200 8ms
__EXPECTED_$EOF__
)
if [ "$a" = "$b" ]; then echo pass; else echo fail; fi
exit 0
