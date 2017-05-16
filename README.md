# xenv

An env to manage envs.

## Introduction

xenv is a set of small self-contained shell scripts, used to install and update other scripts such as rbenv, pyenv, nodenv and their plugins.  
xenv can update these scripts with git, allowing you to keep them frequently up-to-date.  

## Install

xenv can be installed system-wide or per-user.

For a system-wide install:

    $ git clone https://github.com/Nax/xenv.git /opt/xenv

For a per user install:

    $ git clone https://github.com/Nax/xenv.git ~/.xenv

Then, in your shell config, make sure xenv is in the PATH, and run

    $ eval "$(xenv init - $SHELL)"

When using a system-wide installation, you will probably need to create some groups and manage permissions carefully.  
For this reason, the user install is preferred in most cases.

## Usage

Install rbenv:

    $ xenv install rbenv

Install ruby-build (rbenv plugin):

    $ xenv install -p rbenv ruby-build

Don't forget to `xenv rehash` after each env install.

Update installed envs, plugins and xenv itself:

    $ xenv update

Remove nodenv:

    $ xenv uninstall nodenv

Check what envs you can install:

    $ xenv install -l

Check what plugins you can install:

    $ xenv install -p -l

Check what envs are installed:

    $ xenv install -L

Check what plugins are installed:

    $ xenv install -p -L

## License

xenv is distributed under the MIT license.

## Author

The original [xenv](https://github.com/Nax/xenv.git) implementation was created by [Maxime Bacoux (Nax)](https://github.com/Nax/).
