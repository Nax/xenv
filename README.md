# xenv
An env to manage xenvs.

## Install

xenv can be installed system-wide or per-user.

For a system-wide install:

    $ git clone https://github.com/Nax/xenv.git /opt/xenv

For a per user install:

    $ git clone https://github.com/Nax/xenv.git ~/.xenv

Then, in your shell config, make sure xenv is in the PATH, and run

    $ eval "$(xenv init - $SHELL)"

## Usage

Install rbenv:

    $ xenv install rbenv

Install ruby-build (rbenv plugin)

    $ xenv install -p rbenv ruby-build

Don't forget to `xenv rehash` after each env install.

