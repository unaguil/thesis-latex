#!/bin/sh

grep -or --include=*.tex --exclude-dir="Latex" --exclude=tesis.tex '[A-Z]\+\{2,\}' . | awk -F":" '{print $2}' | sort | uniq | awk -F"" ":" '{print "\\nomenclature{" $1 "}{}"}'

