#!/bin/sh

word_count="${1:-5}"

printf '%s%s\n' \
       "$(xkcdpass -d '.' -n "$word_count" --case capitalize)" \
       "$(shuf -i10-99 -n1)"
