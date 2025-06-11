#!/bin/bash

read -p "Enter a first date (YYYY-MM-DD): " DATE
read -p "Enter a second date(YYYY-MM-DD): " DATE2

#DATE="1970-01-02"
#DATE2="1970-01-04"

d1=$(date -d "$DATE" +%s)
d2=$(date -d "$DATE2" +%s)

diff_sec=$(( $d2 - $d1 ))
diff_days=$(( $diff_sec / 86400 ))
echo "$diff_days days"


<<comment

date -d  : The -d flag tells date to interpret a specific date string instead of using the current date/time.

+%s :  formats the date as a Unix timestamp (add the seconds since 1970-01-01 to the given date).

comment
