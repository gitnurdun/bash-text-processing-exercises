#!/usr/bin/env bash
cd "$(dirname "$0")"
if [ ! -f answer.txt ]; then echo fail; exit 1; fi
a=$(cat answer.txt)
b=$(cat <<'__EXPECTED_$EOF__'
date	item	qty	price
2026-01-03	apple	5	2.50
2026-01-03	banana	2	1.20
2026-01-04	apple	3	2.50
2026-01-04	cherry	10	4.00
2026-01-05	banana	7	1.20
2026-01-05	apple	1	2.50
2026-01-06	cherry	2	4.00
2026-01-06	mango	4	3.30
__EXPECTED_$EOF__
)
if [ "$a" = "$b" ]; then echo pass; else echo fail; fi
exit 0
