#!/bin/sh

DIRECTORY=~/fakebin 
FILE=$DIRECTORY/mr_proper
if test -d "$DIRECTORY" 
then
    echo "\0"
else
    {
	mkdir ~/fakebin
	PATH=~/fakebin:$PATH
    }
fi

if test -f "$FILE";
then
    echo "\0"
else
    touch $FILE
    echo "find . -type f \( -regex "\.\/#.*\#" -o -name '*~' \) -delete" > $FILE
    chmod +x $FILE
fi

