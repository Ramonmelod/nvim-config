# Personal setup for Neovim using Lua

<img src="https://github-production-user-asset-6210df.s3.amazonaws.com/136815194/258326081-b113a23c-5c04-45aa-819c-bd04e8ac2a37.png" alt="logo Neovim" width="200" height="auto">
<img src="https://github.com/Ramonmelod/profile-technology-icons/assets/139141993/89970707-fd3d-46e9-897e-7e51ba07ba4c" alt="logo Lua" width="200" height="auto">

## Description: 
 This repository is a basic neovim linux configuration model for those who want to to set up neovim without beginning from zero!

## Used Technologies:

- `Neovim`
- `Lua`

## Autor

- Ramon Melo — Linkedin: [LinkedIn/ramonmelod](https://www.linkedin.com/in/ramonmelod/)

## Instructions:

1. In case it is not installed yet run the command below to get Neovim:

```sh
sudo apt update && sudo apt install neovim
```
2. Downloand this repository to the directory `~/.config/nvim` using the following command:

```sh
git clone https://github.com/Ramonmelod/nvim-config.git ~/.config/nvim
```
PS: If your Neovim was already installed, verify that are no other files in your directory `~/.config/nvim`. Those other files could conflict with the files downloaded via Git from this repository.

3. Download the repository `packer.nvim` to your computer to get the Neovim package manager by running the command:

```sh
git clone https://github.com/wbthomason/packer.nvim.git ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
4. Open your Neovim editor, running the command nvim on your terminal and in the command mode type the following:

```sh
:PackerSync
```

5. After that, your Neovim will update all plugins from the scrips of this repository and be ready for use. Bellow you can some of the remaps commands from this neovim configuration:

`jk = <ESC>`
