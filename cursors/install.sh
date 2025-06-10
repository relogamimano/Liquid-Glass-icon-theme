#!/bin/bash

ROOT_UID=0
DEST_DIR=

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.local/share/icons"
fi

if [ -d "$DEST_DIR/Liquid-Glass-cursors" ]; then
  rm -r "$DEST_DIR/Liquid-Glass-cursors"
fi

if [ -d "$DEST_DIR/Liquid-Glass-dark-cursors" ]; then
  rm -r "$DEST_DIR/Liquid-Glass-dark-cursors"
fi

cp -r dist $DEST_DIR/Liquid-Glass-cursors
cp -r dist-dark $DEST_DIR/Liquid-Glass-dark-cursors

echo "Finished..."

