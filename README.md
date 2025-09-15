<div align="center">

# 💤 My LazyDev Config

## Prerequisites

[![Lua](https://img.shields.io/badge/Lua-blue.svg?style=for-the-badge&logo=lua)](http://www.lua.org)
[![Neovim](https://img.shields.io/badge/Neovim%200.8+-green.svg?style=for-the-badge&logo=neovim)](https://neovim.io)
[![Git](https://img.shields.io/badge/Git-white.svg?style=for-the-badge&logo=git)](https://git-scm.com/)

</div>

## Installation
### Git Clone
The recommended way to install this configuration is to use git clone. This method allows for easy future updates.

```bash
git clone https://github.com/SegusFaultise/nvim.git ~/.config/nvim
```
After running the command, open Neovim, and LazyVim will automatically install all the plugins.

### cURL Command
If you prefer not to use Git, you can download and install the configuration using a curl command. This command will also create a backup of your existing Neovim configuration.

Back up your existing configuration:

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

Install the new configuration:

```bash
mkdir -p ~/.config/nvim && \
curl -L https://github.com/SegusFaultise/nvim/archive/refs/heads/main.tar.gz | \
tar -xz -C ~/.config/nvim --strip-components 1
```
