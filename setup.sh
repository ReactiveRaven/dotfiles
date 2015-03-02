#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd );

pushd $DIR > /dev/null;
ls -a user/ | grep "^\." | grep "[a-zA-Z]" | while read line;
do
	echo ln -s $DIR/user/$line ~/$line;
	ln -s $DIR/user/$line ~/$line;
done;
popd >/dev/null;
