#!/bin/bash

# Configuration
REPO_NAME="ipl2026-website"
USERNAME="anveshak131-wq"
DESCRIPTION="Modern IPL 2026 website with HTML5, CSS3, and AJAX features"

# Check if GitHub Personal Access Token is set
if [ -z "$GITHUB_TOKEN" ]; then
    echo "Error: GitHub Personal Access Token not found."
    echo "Please create a token at: https://github.com/settings/tokens"
    echo "Then run: export GITHUB_TOKEN='your_token_here'"
    exit 1
fi

# Create repository using GitHub API
echo "Creating repository: $REPO_NAME..."
RESPONSE=$(curl -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/user/repos \
  -d "{\"name\":\"$REPO_NAME\",\"description\":\"$DESCRIPTION\",\"public\":true}")

# Check if repository was created successfully
if echo "$RESPONSE" | grep -q "created_at"; then
    echo "Repository created successfully!"
    echo "Repository URL: https://github.com/$USERNAME/$REPO_NAME"
    echo ""
    echo "Now run these commands:"
    echo "git remote add origin https://github.com/$USERNAME/$REPO_NAME.git"
    echo "git push -u origin main"
else
    echo "Failed to create repository. Response:"
    echo "$RESPONSE"
    exit 1
fi

