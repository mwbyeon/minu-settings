#!/bin/bash
set -x

if [ "$(uname)" == "Darwin" ]; then
    SUBL_PATH="/Users/MiNu/Library/Application Support/Sublime Text 3"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    SUBL_PATH="~/.config/sublime-text-3"
fi

# backup 
if [ -d "$SUBL_PATH" ]; then
    SUBL_BACKUP_PATH="$SUBL_PATH.bak"
    echo "backup to $SUBL_BACKUP_PATH"

    cp -r "$SUBL_PATH/Installed Packages" "$SUBL_BACKUP_PATH/"
    cp -r "$SUBL_PATH/Packages" "$SUBL_BACKUP_PATH/"
fi

# remove
rm -rf "$SUBL_PATH/Installed Packages"
rm -rf "$SUBL_PATH/Packages"

# link settings
ln -s "$(PWD)/Packages/" "$SUBL_PATH/Packages"
ln -s "$(PWD)/Installed Packages/" "$SUBL_PATH/Installed Packages"

