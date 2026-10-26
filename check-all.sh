#!/usr/bin/env bash
# Run every test.sh and print a summary: <result> <exercise-dir>
cd "$(dirname "$0")"
shopt -s nullglob
for t in easy/*/test.sh medium/*/test.sh hard/*/test.sh expert/*/test.sh; do
  printf '%s %s\n' "$(bash "$t")" "${t%/test.sh}"
done
