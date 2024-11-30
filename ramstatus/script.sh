#!/bin/bash
ps -eo pid,rss,vsz,command | awk 'NR==1 { print $1, "RSS(MB)", "VSZ(MB)", $4; next } { printf "%-8s %-8.2f %-8.2f %s\n", $1, $2/1024, $3/1024, $4 }' | (head -n 1 && tail -n +2 | sort -k2,2nr)
