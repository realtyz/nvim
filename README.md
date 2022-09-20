# Neovim config for REALTYZ

## How to use
1. Install `ripgrep`
2. Install `fd`
3. Install [Nerd Fonts](https://www.nerdfonts.com/)
4. Download `packer.nvim`
	```shell
	git clone --depth 1 https://github.com/wbthomason/packer.nvim\
	~/.local/share/nvim/site/pack/packer/start/packer.nvim
	```
4. Initialize `nvim`
	```shell
	cd ~/.config
	git clone https://github.com/realtyz/nvim.git
	nvim +PackerSync
	```
