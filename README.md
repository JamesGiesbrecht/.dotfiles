# James Giesbrecht's Dotfiles

## Prerequisites

TODO

## Setup

TODO

## Manual System Configurations

### macOS

1. Sign in with Apple ID
2. Finder Settings
   - Show View Options
     - Sort By: Name
     - Show item info
     - Use as Defaults
   - View > Show Tab Bar
   - Settings > Sidebar
3. System Settings
   - Desktop & Dock > Prefer tabs when opening documents = Always
   - Night Shift
   - Disable Keychain Sync and Autofill
4. Other System Configuration
   - Cleanup Dock
   - Login Items

### Apps to Install

1. App Store
   - [Amphetamine](https://apps.apple.com/ca/app/amphetamine/id937984704?mt=12)
   - [BetterSnapTool](https://apps.apple.com/ca/app/bettersnaptool/id417375580?mt=12)
   - [Bitwarden](https://apps.apple.com/ca/app/bitwarden/id1352778147?mt=12) - Brew version doesn't allow browser biometrics.
   - [EasyRes](https://apps.apple.com/ca/app/easyres/id688211836?mt=12)
   - [Pages](https://apps.apple.com/ca/app/pages/id409201541?mt=12)
   - [Numbers](https://apps.apple.com/ca/app/numbers/id409203825?mt=12)
   - [Keynote](https://apps.apple.com/ca/app/keynote/id409183694?mt=12)
   - [Trello](https://apps.apple.com/ca/app/trello/id1278508951?mt=12)
   - [Wireguard](https://apps.apple.com/ca/app/wireguard/id1451685025?mt=12)
   - [Honey](https://apps.apple.com/ca/app/paypal-honey-for-safari/id1472777122?mt=12)
   - [AdGuard for Safari](https://apps.apple.com/ca/app/adguard-for-safari/id1440147259?mt=12)
2. Download Apps
   - [VSCode](https://code.visualstudio.com/sha/download?build=stable&os=darwin-arm64)
   - [MacGPT](https://url6794.customers-2.gumroad.com/ls/click?upn=QvuFblHjur3wo-2BR9Cct3JxPUXMdGIMtb9F8Qk04-2ByWpyrb2-2FiWRZ9MDV3kJZBrtSetSu1jMi4TjIRfVBHhPIZs3-2BVfAn6VXz8GFTlOUEwKc-3DvAi5_YaAVm6fbmigWjqsLF62Dyqo2B69DhphRX-2FiwhAf-2FaUM-2Bz056o8AEWyHBonTKmmpD5m4OPrB-2BO-2B60Qi39JPb7vcED4cNb5fgoHHKy3CiMoHyJBmA5PgFSZ3vc1VTd9uvH-2BxopfP8Epi1BDZmitcJxUXHw5CJccRazgxZH1Jo5IIZ1J7CnvxWL7nq6LBdKMAY1KHOJBybHmsAQpZQv3GB9d3FFpfA7607aqnfNpcy90xBJZ3auBa3xHKyO5DU5RZQ3GZcuLHPt2kwZqyAz58HH7W2f1uiUNwYGYzrsCahONQibbP3F-2BKHPbtpHo3kn8FFGBCuvjnMZTKZhRgLqBf7awrTMK7jr0NRfXXi0clfUTbtYMP5Z-2BkoL42aHmDeEGuaIFrjed5mdxun3Igp8py-2FVdg-3D-3D)
   - PolyMC (Optional)
   - Amulet (Optional)
3. Homebrew Apps (Optional)
   - multimc
   - manymc
   - prismlauncher
4. Copy Apps
   - Sketch
   - Bartender 4
   - Photoshop

### App Configuration

- CLI
  - `sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk`
  - `nvm install --lts`
- Chrome 🔑
  - Hold Q to quit
- Bitwarden
  - Start to Menu Bar
  - Start automatically on login
  - Allow browser integration
  - Sign into browser extensions
- VSCode 🔑
  - Shell Command: Install 'code' command in PATH
- Warp 🔑
  - Window Opacity: 90%
  - Default Editor: VSCode
  - Select Theme in Command Palette `CMD + P`
- MacGPT
  - Keyboard Shortcut: ⌥⇧⎵
- Docker
  - Installer
    - Advanced Settings > User CLI Tools `$HOME/.docker/bin`
  - Settings > General
    - Container Terminal: System Default
- Safari
  - Always Show Tab Bar
  - Show Favorites Bar
  - Settings
    - Advanced > Show Full Website Address
- SourceTree
  - Use System Git
- Trello 🔑
- Obsidian 🔑
- Postman 🔑
- Discord 🔑
- Steam 🔑
- Epic Games Launcher 🔑

## TODO

- NPM Global Modules
- Clone repos script
- Alias and function files
  - Docker Aliases
- Unraid
  - User Scripts
  - Custom configs
- TS/JS
  - eslint
  - prettier
  - nvm
  - tsconfig
- VSCode Configs
