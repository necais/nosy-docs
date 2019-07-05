#!/bin/bash

set -e

# Change to build directory
cd public

# Checkout deployment branch
git checkout -B deployment

# Add the changed files
git add -A

# Commit the changed files
git commit -m "Rebuilding site 'date'"

# Push changes to deployment branch
git push -u origin HEAD

# Create pull request: deployment -> master
hub pull-request -m "Rebuilding site 'date'"

# Change back to root directory
cd ..