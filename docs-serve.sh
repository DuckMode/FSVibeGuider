#!/bin/bash

# Add the local bin directory to PATH
export PATH="$HOME/.local/bin:$PATH"

# Check if MkDocs is installed
if ! command -v mkdocs &> /dev/null; then
    echo "MkDocs is not installed. Installing MkDocs and Material theme..."
    pip install --user mkdocs mkdocs-material
fi

# Serve the documentation
echo "Starting MkDocs server..."
$HOME/.local/bin/mkdocs serve
