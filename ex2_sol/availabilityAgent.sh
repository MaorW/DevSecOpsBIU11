#!/bin/bash

TEST_PERIODICITY=5
while read l; do
filename='hosts'
ErrorLevel=$?
ping -c 1 $l
if [[ $ErrorLevel -eq 1 ]]; then
    echo success
else
    echo fail
fi
     curl -X POST 'http://localhost:8086/write?db=hosts_metrics' --data-binary "availability_test,host=$l value=$ErrorLevel `date +%s%N`"
done < $filename
sleep $TEST_PERIODICITY
done
#continue to optional on homework
