#!/bin/bash

# Display Personalized Welcome Banner
echo "============================================"
echo "     Setting Up Custom Git Aliases          "
echo "============================================"
echo "👋 Hey there! I'm Charles Reilly, and I make tools to help developers like you."
echo "    For devs, by a dev. Let's get your Git CLI supercharged!"
echo

# Clone or download the git-aliases file
ALIAS_FILE=~/git-aliases

# Check if alias file exists, if not download it (replace URL with actual file URL or path)
if [ ! -f "$ALIAS_FILE" ]; then
    echo "⏳ Downloading aliases file..."
    sleep 1  # Simulate download time
    curl -o "$ALIAS_FILE" "https://path.to.your.repo/git-aliases"  # Replace with actual file URL or local path
    echo "📥 Aliases file downloaded to $ALIAS_FILE"
else
    echo "📂 Aliases file already exists at $ALIAS_FILE. Skipping download."
fi

# Check if aliases are already included in the global config
if git config --global --get-regexp 'include.path' | grep -q "$ALIAS_FILE"; then
    echo "✅ Aliases are already set up in your Git config!"
else
    # Include the alias file in global git config
    git config --global include.path "$ALIAS_FILE"
    echo "✅ Aliases have been successfully added to your global Git config!"
fi

# Completion Banner
echo
echo "============================================"
echo "    🎉 Git Aliases Installation Complete 🎉   "
echo "============================================"
echo "✨ Your Git CLI is now optimized! Happy coding!"
echo
