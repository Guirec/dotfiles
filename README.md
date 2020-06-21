# Guirec Lefort's Dotfiles
This is a collection of dotfiles and scripts I use for customizing my Mac to my liking and setting up the software I use on a day-to-day basis.

## Setup

To set up the `dotfiles` just run this snippet in the terminal:
```
curl -sS https://raw.github.com/guirec/dotfiles/master/setup.sh | bash
```
(**DO NOT** run the `setup` snippet if you don't fully understand [what it does](setup.sh).)

The setup process will:

* Download the dotfiles on your computer (by default it will suggest
  `~/Projects/Personal/dotfiles`)
* Install [Xcode Command Line Tools](macos/xcode-clt.sh), [Homebrew](macos/homebrew.sh), [mas-cli](macos/mas.sh), [Git](macos/git.sh), [Zsh and Starship](macos/zsh.sh)
* Create some additional [directories](macos/create_directories.sh)
* [Symlink](macos/create_symbolic_links.sh) the
  [`git`](git), and
  [`shell`](shell) files
* Create some [local configuration files](macos/create_local_config_files.sh)
* Install [nvm and the latest Node version](macos/nvm.sh)
* Install [some applications](macos/apps.sh)
* Set custom [macOS preferences](macos/preferences.sh)

## Local Settings

The `dotfiles` can be easily extended to suit additional local requirements by using the following files:

### `~/.bash.local`

The `~/.bash.local` file it will be automatically sourced after all the other [`bash` related files](shell), thus, allowing its content to add to or overwrite the existing aliases, settings, PATH, etc.

### `~/.gitconfig.local`

The `~/.gitconfig.local` file it will be automatically included after the configurations from `~/.gitconfig`, thus, allowing its content to overwrite or add to the existing `git` configurations.

__Note:__ Use `~/.gitconfig.local` to store sensitive information such as the `git` user credentials.

## Wallpapers

* `black.jpg` wallpaper is from the [BLACK series by Jean-Marc Denis](http://jmd.im/black).
* `fleaps.jpg` wallpaper was made by [Fabian Albert](https://thetimeloop.deviantart.com) but it's no longer in his gallery.

## Forks

If you decide to fork this project, don't forget to substitute my username with your own in the [`setup` snippets](#setup), [in the `setup` script](https://github.com/Guirec/dotfiles/blob/6555b6c5932c487ece960ec661ff195ee60c4200/setup.sh#L6), and in [the `system` script](https://github.com/Guirec/dotfiles/blob/6555b6c5932c487ece960ec661ff195ee60c4200/macos/preferences/system.sh#L8).
