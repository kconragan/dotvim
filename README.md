# About

a .vim configuration by kai.conragan@gmail.com

## Overview

This is a Vim configuration for a web-development orientated workflow. Specifically, if you spend most of your time writing HTML, CSS, and JavaScript, you might be able to find something useful here.

This configuration relies on a few critical pieces:

  - **Vundle**  
    The most magical bundle manager in the world.  
    See https://github.com/gmarik/vundle
  - **PeepOpen**  
    A file navigation application that works with with not only Vim, but Textmate and others as well. Provides fuzzy search, so you can identify files by typing names, paths, and other metadata.  
    See http://peepcode.com/products/peepopen
  - **DroidSansMono**  
    A wonderful coding font. I use a custom version that adds slashes to zeroes to help distinguish them from non-numeric characters.  
    See http://www.cosmix.org/software/

## Installation

  1. Clone repo: `git clone git://github.com/kconragan/dotvim.git ~/.vim`
  2. Create a symlink to ~/.vimrc: `ln -s ~/.vim/vimrc ~/.vimrc`
  3. Go to your .vim directory: `cd ~/.vim/`
  4. Install Vundle: `git clone http://github.com/gmarik/vundle.git bundle/vundle`
  5. Launch Vim
  6. Type `:BundleInstall`
  7. Re-source your vimrc by typing: `: source ~/.vimrc`
  6. Enjoy

Note to self: set `git remote set-url origin git@github.com:kconragan/dotvim.git` on fresh clone

## Todo

  - Add colorscheme
  - Figure out how to make Supertab play nicely with snipMate
  - Autocompletion (beyond Supertab)
  - Explore vim-easymotion
  - Explore vim-fugitive
  - Explore neocomplcache
