#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd );

pushd $DIR > /dev/null;
ls -a user/ | grep "^\." | grep "[a-zA-Z]" | while read line;
do
	if [ ! -f $DIR/user/$line ];
	then
		echo ln -s $DIR/user/$line ~/$line;
		ln -s $DIR/user/$line ~/$line;
	fi;
done;
ls -a user/ | grep "^_" | grep "[a-zA-Z]" | while read line;
do
	echo $line;
	./user/$line;
done;
popd >/dev/null;
