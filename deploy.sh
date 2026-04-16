#!/bin/bash

# Configure git
git config user.email "roxanne@example.com"
git config user.name "Roxanne"

# Initialize git if not already initialized
if [ ! -d .git ]; then
  git init
fi

# Add all files and commit
git add -A
git commit -m "v1.0.1: Add Explore section for most visited sites and improve layout" || echo "Nothing to commit"

# Add remote
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/roxanne-liu/tab_out.git

# Push to main branch
git branch -M main
git push -u origin main

echo "✅ Successfully pushed to GitHub!"
