### Introduction

This is my neovim config. Highly inspired by ThePrimeagen, and other youtube and reddit community.


### Where to put This

    cd ~/.config

### Bootstrapping

    nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

#### Setup packer

    git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 
#### Setting up

    :PackerSync

and relaunch.
