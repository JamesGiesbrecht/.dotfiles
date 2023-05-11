#!/usr/bin/env bash

# Checking if the shell has updated sources
if ! declare -p SH >/dev/null 2>&1; then
  # Prompt the user to close the shell
  read -p "The 'SH' export is not defined. Would you like to close the shell? [y/N] " answer
  if [[ $answer =~ ^[Yy]$ ]]; then
    exit 0
  fi
fi
