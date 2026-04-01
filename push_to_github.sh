#!/bin/bash
# Run this from the finance-discovery-seed/ folder to push all files to GitHub
# Make sure you have git installed and are authenticated with GitHub

cd "$(dirname "$0")"

# Initialize git repo
git init
git branch -M main

# Add remote (update URL if your GitHub username is different)
git remote add origin https://github.com/ykta100pot/finance-discovery-seed.git

# Pull the existing README commit
git pull origin main --allow-unrelated-histories

# Add all files
git add AGENTS.md ARCHITECTURE.md MEMORY.md DISCOVERY_SEED.md DISCOVERYSEED.md LICENSE
git add trusted_outputs/README.md processes/README.md source_systems/README.md
git add metrics/README.md dimensions/README.md open_questions/README.md

# Commit
git commit -m "Add discovery seed: method, templates, and folder scaffolding"

# Push
git push -u origin main

echo ""
echo "Done! Your repo is live at: https://github.com/ykta100pot/finance-discovery-seed"
