#!/bin/sh

FILE=/hushlogin
if [ -f "$FILE" ]; then
    echo "$FILE exists.All Good"
else 
   touch hushlogin.txt	
    echo "$FILE created"
fi
