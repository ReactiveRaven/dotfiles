#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd );

function setGitProfile {
    if hostname | grep "pook" --silent;
    then
        ln -s $DIR/.gitconfig.personal ~/.gitconfig
    else 
        ln -s $DIR/.gitconfig.work ~/.gitconfig
    fi;
}

if [ ! -f ~/.gitconfig ];
then
    setGitProfile;
fi;
