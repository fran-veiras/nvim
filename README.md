# Neovim Installation and Configuration Guide

## Installation and Setup

1. **Install Neovim (≥ 8) on Ubuntu**: 
   Follow the instructions provided at the official Snapcraft website: [Install Neovim](https://snapcraft.io/install/nvim/ubuntu#install).

2. **Install Packer for Neovim**:
   - For Git-based installation, use the following command:
     ```
     git clone --depth 1 https://github.com/wbthomason/packer.nvim\
     ~/.local/share/nvim/site/pack/packer/start/packer.nvim
     ```

3. **Install Additional Tools**:
   - Install `ripgrep`:
     ```
     sudo apt-get install ripgrep
     ```
   - Install `diagnostic-languageserver` globally:
     ```
     npm install -g diagnostic-languageserver
     ```
   - Install `neovim` node module globally:
     ```
     sudo npm install -g neovim
     ```
   - Install `tree-sitter-cli` globally:
     ```
     npm install -g tree-sitter-cli
     ```
   - Install `pyright` globally:
     ```
     sudo npm i -g pyright
     ```
   - Install `lua-language-server` (via Homebrew):
     ```
     brew install lua-language-server
     ```

   🚨 **Alert**: Ensure that all required packages are installed before proceeding with Packer installation.

4. **Debug Pre-load Errors**:
   - In `init.lua`, comment out the following lines if they cause errors:
     ```
     require("lsp_lines").setup()
     require('maps')
     ```

5. **Install Plugins with Packer**:
   - Open Neovim and run the following command:
     ```
     :nvim lua/pulgins.lua
     :packerInstall
     ```

7. **Language Server Installation**:
- Install language servers in Neovim with:
  ```
  :LspInstall
  ```

8. **Install Prettier**:
- Install `@fsouza/prettierd` globally for code formatting:
  ```
  npm install -g @fsouza/prettierd
  ```

After completing these steps, Neovim should be fully set up and functional with the necessary plugins and language servers.


