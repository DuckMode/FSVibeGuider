#!/bin/bash

# This script is a wrapper for MkDocs commands
# Usage: ./mkdocs-wrapper.sh [command]
# Example: ./mkdocs-wrapper.sh serve

# Check if a command was provided
if [ $# -eq 0 ]; then
    echo "Usage: ./mkdocs-wrapper.sh [command]"
    echo "Available commands: serve, build, gh-deploy"
    exit 1
fi

# Execute the MkDocs command
case "$1" in
    serve)
        $HOME/.local/bin/mkdocs serve
        ;;
    build)
        $HOME/.local/bin/mkdocs build
        ;;
    gh-deploy)
        $HOME/.local/bin/mkdocs gh-deploy
        ;;
    *)
        $HOME/.local/bin/mkdocs "$@"
        ;;
esac
