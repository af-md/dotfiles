#!/bin/bash

# Install homebrew if not installed
if ! command -v brew &> /dev/null; then

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install packages
brew bundle --no-lock --file=~/.local/share/chezmoi/Brewfile

# Installs brew packages