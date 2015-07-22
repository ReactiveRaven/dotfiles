#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd );

function setGitProfile {
    read -p "Are you at work? (Y/n): " ANS;
    case ${ANS:0:1} in
        n|N)
            ln -s $DIR/.gitconfig.personal ~/.gitconfig
            ;;
        *)
            ln -s $DIR/.gitconfig.work ~/.gitconfig
            ;;
    esac;
}

if [ ! -f ~/.gitconfig ];
then
    setGitProfile;
fi;
