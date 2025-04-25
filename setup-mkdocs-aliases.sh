#!/bin/bash

# Path to zshrc file
ZSHRC="$HOME/.zshrc"

# Check if the file exists
if [ ! -f "$ZSHRC" ]; then
    echo "Error: $ZSHRC does not exist."
    exit 1
fi

# Check if aliases already exist
if grep -q "alias mkdocs=" "$ZSHRC"; then
    echo "MkDocs aliases already exist in $ZSHRC"
else
    # Add aliases to zshrc
    echo "" >> "$ZSHRC"
    echo "# MkDocs aliases" >> "$ZSHRC"
    echo "alias mkdocs='$HOME/.local/bin/mkdocs'" >> "$ZSHRC"
    echo "alias mkdocs-serve='$HOME/.local/bin/mkdocs serve'" >> "$ZSHRC"
    echo "alias mkdocs-build='$HOME/.local/bin/mkdocs build'" >> "$ZSHRC"
    echo "alias mkdocs-deploy='$HOME/.local/bin/mkdocs gh-deploy'" >> "$ZSHRC"
    
    echo "MkDocs aliases added to $ZSHRC"
    echo "Please run 'source $ZSHRC' or start a new terminal session to use the aliases."
fi
