# About

a .vim configuration by kai.conragan@gmail.com

## Overview

This is a Vim configuration for a web-development orientated workflow. Specifically, if you spend most of your time writing HTML, CSS, and JavaScript, you might be able to find something useful here.

This configuration relies on a few critical pieces:

  - **Solarized**  
    The most thoughtful color scheme I've ever seen. I used to obsess over color schemes, but now I just use this one by default, thanks to the wonderful work of Ethan Schoonover. Highlights include sixteeen color palette designed for use with terminal and gui apps, CIELAB lightness relationships, and both dark and light theme options.  
    See http://ethanschoonover.com/solarized
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
  5. Download and install [DroidSansMonoSlashed](http://cosmix.org/software)
  6. Launch Vim
  7. Type `:BundleInstall`
  8. Grab a cup of coffee, it should take 2-3 minutes depending on your network connection
  9. Restart Vim (best), *or* re-source your vimrc by typing: `: source ~/.vimrc` (if you're in a hurry)
  10. Enjoy

Note to self: set `git remote set-url origin git@github.com:kconragan/dotvim.git` on fresh clone

## Know Bugs

  - When installing a new Bundle via Vundle (`:BundleInstall`), snipMate stops responding upon completion until restarting Vim.

## Todo

  - Explore vim-easymotion
  - Explore vim-fugitive
  - Explore ack
  - Explore repeat
  - Explore lusty
  - Explore htmlinsert
  - Explore tabular
