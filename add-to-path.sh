#!/bin/bash

# Check which shell configuration file exists and is being used
SHELL_CONFIG=""
if [ -f "$HOME/.bashrc" ]; then
    SHELL_CONFIG="$HOME/.bashrc"
elif [ -f "$HOME/.bash_profile" ]; then
    SHELL_CONFIG="$HOME/.bash_profile"
elif [ -f "$HOME/.zshrc" ]; then
    SHELL_CONFIG="$HOME/.zshrc"
else
    echo "Could not find a shell configuration file (.bashrc, .bash_profile, or .zshrc)."
    exit 1
fi

# Check if PATH already includes .local/bin
if grep -q "PATH=\"\$HOME/.local/bin:\$PATH\"" "$SHELL_CONFIG"; then
    echo "PATH already includes $HOME/.local/bin in $SHELL_CONFIG"
else
    # Add the PATH update to the shell configuration file
    echo "" >> "$SHELL_CONFIG"
    echo "# Add local bin directory to PATH" >> "$SHELL_CONFIG"
    echo "export PATH=\"\$HOME/.local/bin:\$PATH\"" >> "$SHELL_CONFIG"
    echo "PATH updated in $SHELL_CONFIG to include $HOME/.local/bin"
    echo "Please restart your terminal or run 'source $SHELL_CONFIG' for the changes to take effect."
fi
