#!/usr/bin/env bash

# Check if VS Code is installed
if [ ! "$(ls /Applications/Visual\ Studio\ Code.app)" ]; then
  echo 'VS Code not found, downloading'
  curl -L "https://code.visualstudio.com/sha/download?build=stable&os=darwin-arm64" -o $HOME/Downloads/vscode.zip
  echo 'Moving VS Code to /Applications folder'
  unzip $HOME/Downloads/vscode.zip -d /Applications
  rm -f $HOME/Downloads/vscode.zip
else
  echo 'VS Code already installed'
fi

# Check if Xcode command line tools are installed
if [ ! "$(xcode-select --print-path)" ]; then
  echo 'Installing Xcode command line tools'
  xcode-select --install
else
  echo 'Xcode command line tools found.'
fi

# Check if Homebrew is installed
if [ ! -f "$(which brew)" ]; then
  echo 'Installing homebrew'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  echo 'Updating homebrew'
  brew update
fi
brew tap homebrew/bundle # Install Homebrew Bundle

# Check if oh-my-zsh is installed
OMZDIR="$HOME/.oh-my-zsh"
if [ ! -d "$OMZDIR" ]; then
  echo 'Installing oh-my-zsh'
  /bin/sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
  # Source the file and execute in zsh
  echo 'Updating oh-my-zsh'
  zsh -c "source $OMZDIR/oh-my-zsh.sh && omz update"
fi
