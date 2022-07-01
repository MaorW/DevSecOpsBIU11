#!/bin/bash

TEST_PERIODICITY=5
#Main loop
while true; do
#set variables
filename='hosts'
ErrorLevel=$?
#Start ping loop
while read l; do
ping -c 1 $l
if [[ $ErrorLevel -eq 0 ]]
then
    echo fail to run command: ping -c 1 $l
fi
    echo Test result for $l is $ErrorLevel at $(date +%s%N)
done < $filename
sleep $TEST_PERIODICITY
done
#continue to optional on homework
