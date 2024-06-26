# Personal setup for Neovim using Lua
<div style="display:flex;">
<img src="https://github-production-user-asset-6210df.s3.amazonaws.com/136815194/258326081-b113a23c-5c04-45aa-819c-bd04e8ac2a37.png" alt="logo Neovim" width="200" height="auto">
<img src="https://github.com/Ramonmelod/profile-technology-icons/assets/139141993/89970707-fd3d-46e9-897e-7e51ba07ba4c" alt="logo Lua" width="200" height="auto">
</div>

## Description:

This repository is a basic neovim linux configuration model for those who want to to set up neovim without beginning from zero!

## Used Technologies:

- `Neovim`
- `Lua`

## Autor

- Ramon Melo — Linkedin: [LinkedIn/ramonmelod](https://www.linkedin.com/in/ramonmelod/)

## Instructions:

#### before start check your version of `neovim`, for this repository needs neovim >=0.8.0.

- See neovim versions in: https://github.com/neovim/neovim/releases

1. In case it is not installed yet run the command below to get Neovim:

```sh
sudo apt update && sudo apt install neovim
```

2. Downloand this repository to the directory `~/.config/nvim` using the following command:

```sh
rm -rf ~/.config/nvim && git clone https://github.com/Ramonmelod/nvim-config.git ~/.config/nvim
```

PS: If your Neovim was already installed, the first part of this command will delete the directory `~/.config/nvim`. For this directory could conflict with the files downloaded via Git from this repository.

3. Download the repository `packer.nvim` to your computer to get the Neovim package manager by running the command:

```sh
git clone https://github.com/wbthomason/packer.nvim.git ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

4. Open your Neovim editor, running the command nvim on your terminal and in the command mode type the following:

```sh
:PackerSync
```

5. After that, your Neovim will update all plugins from the scrips of this repository and be ready for use. Bellow you can some of the remaps commands from this neovim configuration:

- `jk = <ESC>`
- `Space + j  = nvim-tree`
- `Space + k  = vertical terminal 0`
- `Space + 1  = vertical terminal 1`
- `Space + 2  = vertical terminal 2`
- `Space + 3  = vertical terminal 3`
- `Space + 4  = vertical terminal 4`
- `Space + 5  = vertical terminal 5`
- `Space + 6  = vertical terminal 6`
- `Ctrl + j  = horizontal terminal 0`
- `Ctrl + k  = horizontal terminal 1`
- `Ctrl + l  = horizontal terminal 2`
- `Ctrl + i  = horizontal terminal 3`
- `Ctrl + j  = horizontal terminal 4`
- `Space + w  = switch to top terminal`
- `Space + s  = switch to bottom terminal`
- `Space + a  = switch to left terminal`
- `Space + d  = switch to right terminal`
- `Space + y  = in visual mode it copies the selection to the clipboard`
- `r = redo`
- `u = undo`

6. Neovim utilily commands:

- `yy = copy the line`
- `p = paste the copied line in the below line`
- `P = paste the copied line in the above line`
