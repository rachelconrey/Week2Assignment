#!/bin/bash

# Directory where the repository is located
REPO_DIR="/home/ec2-user/helloworld"

# GitHub repository URL
REPO_URL="https://github.com/rachelconrey/Week2Assignment.git"

# Check if the repository directory exists
if [ ! -d "$REPO_DIR" ]; then
    # Clone the repository if it doesn't exist
    git clone "$REPO_URL" "$REPO_DIR"
fi

# Change to the repository directory
cd "$REPO_DIR"

# Pull the latest changes from the repository
git pull origin main

# Install dependencies
/usr/bin/npm install

# Run the Node.js application
/usr/bin/node /home/ec2-user/helloworld/index.js
