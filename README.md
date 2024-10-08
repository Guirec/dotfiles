# Guirec Lefort's dotfiles

This repository contains all my dotfiles, managed by [chezmoi](https://github.com/twpayne/chezmoi).

## Software I use

### Multiplatform

- [1Password](https://1password.com)
- [Cursor](https://www.cursor.com)
- [Figma](https://www.figma.com/fr-fr/downloads)
- [Firefox](https://mozilla.org/firefox)
- [HandBrake](https://handbrake.fr)
- [Obsidian](https://obsidian.md)
- [ONLYOFFICE](https://www.onlyoffice.com)
- [Polypane](https://polypane.app)
- [Signal](https://www.signal.org)
- [WezTerm](https://wezfurlong.org/wezterm)

### Command line

- [bat](https://github.com/sharkdp/bat)
- [eza](https://github.com/eza-community/eza)
- [fish shell](https://fishshell.com)
- [fzf](https://github.com/junegunn/fzf)
- [GitHub CLI](https://cli.github.com)
- [Helix](https://helix-editor.com)
- [Kirby CLI](https://github.com/getkirby/cli)
- [Lazygit](https://github.com/jesseduffield/lazygit)
- [Starship](https://starship.rs)
- [zoxide](https://github.com/ajeetdsouza/zoxide)

### MacOS

- [BarTranslate](https://github.com/ThijmenDam/BarTranslate)
- [CleanMyMac X](https://setapp.com/apps/cleanmymac)
- [CleanShot X](https://setapp.com/apps/cleanshot)
- [Dash](https://setapp.com/apps/dash)
- [DBngin](https://dbngin.com)
- [Herd](https://herd.laravel.com)
- [ImageOptim](https://imageoptim.com)
- [Ivory](https://tapbots.com/ivory)
- [MindNode](https://setapp.com/apps/mindnode)
- [MiniSim](https://www.minisim.app)
- [Numi](https://setapp.com/apps/numi)
- [Paste](https://setapp.com/apps/paste)
- [PDF Squeezer](https://setapp.com/apps/pdf-squeezer)
- [PixelSnap](https://setapp.com/apps/pixelsnap)
- [Slice](https://github.com/source-foundry/Slice)
- [TablePlus](https://setapp.com/apps/tableplus)
- [Transmit](https://www.panic.com/transmit)
- [Ulysses](https://setapp.com/fr/apps/ulysses)
- [Zed](https://zed.dev)

### Node packages

- [@bramus/caniuse-cli](https://github.com/bramus/caniuse-cli)

## Set up a new MacOS installation

1. Install [Homebrew](https://brew.sh)
2. Install [chezmoi](https://github.com/twpayne/chezmoi) and [1Password](https://1password.com) : `brew install chezmoi && brew install --cask 1password`
3. [Set up 1password for SSH and Git](https://developer.1password.com/docs/ssh)
4. Init chezmoi with this dotfiles repository: `chezmoi init git@github.com:Guirec/dotfiles.git`
5. Apply dotfiles to the right places with chezmoi: `chezmoi apply`
6. Install apps available with Homebrew: `brew bundle install`
7. [Set fish as default shell](https://fishshell.com/docs/current/#default-shell)
8. Install App Store and [Setapp](https://setapp.com/) apps
9. Install Node packages globally: `bun install -g [package-name]`
10. Set MacOS settings and others applications with no dotfiles
