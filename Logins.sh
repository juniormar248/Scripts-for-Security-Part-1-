#!/bin/bash

U=$USER

DIR="/home/$U/LoginInfo"

if [ ! -d "$DIR" ]
then
                        mkdir LoginInfo 2>/dev/null
fi

DATE=$(date +%d-%m-%Y:%T)

FN="$DIR/Logins_"$DATE".txt"

touch $FN

last | nawk -F"[[:space:]]" 'substr($15,1,1) ~ /^[0-9]+$/ {print $15" "$25" "$26" "$27" "$28" "$29}' >> $FN
