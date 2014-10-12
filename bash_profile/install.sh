#!/bin/bash
set -x

if [ "$(uname)" == "Darwin" ]; then
    PROFILE=~/.profile
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    PROFILE=./.bash_profile
fi

STR="source ~/.minu_profile"

if grep -Fxq "$STR" $PROFILE
then
    echo 'ok'
else
    echo "$STR" >> $PROFILE
    echo 'append $STR'
fi

# link settings
ln -s "$(PWD)/.minu_profile" ~
ln -s "$(PWD)/.git-prompt.sh" ~
