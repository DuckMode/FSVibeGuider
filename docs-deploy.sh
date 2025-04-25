#!/bin/bash

# Add the local bin directory to PATH
export PATH="$HOME/.local/bin:$PATH"

# Check if MkDocs is installed
if ! command -v mkdocs &> /dev/null; then
    echo "MkDocs is not installed. Installing MkDocs and Material theme..."
    pip install --user mkdocs mkdocs-material
fi

# Deploy the documentation to GitHub Pages
echo "Deploying MkDocs site to GitHub Pages..."
$HOME/.local/bin/mkdocs gh-deploy

echo "Documentation deployed successfully to GitHub Pages."
