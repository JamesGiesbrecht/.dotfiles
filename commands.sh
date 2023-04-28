# Bashhub terminal history
# https://bashhub.com/usage
curl -OL https://bashhub.com/setup && $SHELL setup # Install
bh -i                                              # CTRL + B: Interactive Search. Access detailed with with i
bh -n                                              # Recent n commands
bh -d                                              # The last commands you executed in this directory.
bh -sys -n 10 "curl"                               # The last 10 curl commands you produced on this system

# https://github.com/kdabir/has
has appName # Check if you have a command or app installed and the current version

# https://github.com/pindexis/qfc File auto-completion
# CTRL + F

# https://github.com/sebglazebrook/aliases
aliases init   # Initialize aliases config
aliases rehash # Reload aliases config to shell

# Docker
docker context use contextName # default unraid-docker
