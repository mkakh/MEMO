#!/usr/bin/env bash

TERMINAL=alacritty
DIR="$HOME/.memo"
SETTINGS="/usr/share/memo"

# function for alacritty
function EXEC() {
  alacritty --command $*
}

# Make the save directory
if [ ! -d "$DIR" ]; then
  mkdir -v $DIR;
fi

# Install Custom latexmkrc 
if [ ! -e "$HOME/.latexmkrc" ]; then
  cp -v $SETTINGS/latexmkrc $HOME/.latexmkrc
fi

if [ $# -ne 1 ]; then
  echo "Usage: memo file_name";
  exit 1
else
  FILE_NAME="$1.tex"
fi

pushd $DIR
if [ ! -e "$FILE_NAME" ]; then
  cp -v $SETTINGS/template.tex "$FILE_NAME"
  sed -i "s/TEMPLATE-TITLE/$FILE_NAME/g" "$FILE_NAME"
  sed -i "s/TEMPLATE-AUTHOR/$USER/g" "$FILE_NAME"
fi

EXEC "vim $FILE_NAME"&
EXEC "latexmk -pv $FILE_NAME"&
popd

