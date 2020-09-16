#!/bin/bash

sleep 10
while true; do
    let "SECS = $RANDOM % 2"
    sleep $SECS
    let "DAY = $RANDOM % 32"
    let "MONTH = $RANDOM % 13"
    let "YEAR = $RANDOM % 110 + 1900"
    curl http://127.0.0.1:8000/age_verification/\?birthdate\=$MONTH-$DAY-$YEAR
    echo
done
