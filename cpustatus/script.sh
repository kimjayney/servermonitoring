#!/bin/bash
ps -eo pid,%cpu,rss,vsz,command | awk 'NR==1 { printf "%-8s %-8s %-8s %-8s %s\n", $1, "%CPU", "RSS(MB)", "VSZ(MB)", $5; next } { printf "%-8s %-8.2f %-8.2f %-8.2f %s\n", $1, $2, $3/1024, $4/1024, $5 }' | (head -n 1 && tail -n +2 | sort -k2,2nr)


