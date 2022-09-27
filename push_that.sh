#!/bin/sh

DIRECTORY=~/fakebin 
FILE=$DIRECTORY/push_that
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
    echo "
msgcom=\$@
git add *
git commit -vam \"\$msgcom\"
git push
" > $FILE
    chmod +x $FILE
fi



