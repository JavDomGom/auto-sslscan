#!/usr/bin/env bash

# Create "out" dir if not exist.
[ -d out ] || mkdir out

i=0
total=$(< $1 wc -l)

# Needs file as first param.
cat $1 | while read domain
do
    ((i+=1))
    printf '%05d/%05d %s\n' $i $total "${domain[@]}"
    sslscan --show-certificate $domain >> out/$domain.txt &

    # Loop in chunks of 30 lines with 3 seconds of sleep. Change this values as you need.
    [ $((i%30)) -eq 0 ] && sleep 3
done
