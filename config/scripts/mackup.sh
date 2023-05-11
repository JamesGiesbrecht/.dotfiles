#!/usr/bin/env bash

# Check if Mackup is available
if ! command -v mackup >/dev/null 2>&1; then
  echo "Mackup is not installed. Please install it to proceed."
  exit 1
fi

# Prompt the user to restore
read -p "Mackup is available. Do you want to restore your settings? [y/N] " answer
if [[ $answer =~ ^[Yy]$ ]]; then
  mackup restore
fi
