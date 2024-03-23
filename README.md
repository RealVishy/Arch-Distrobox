# Vishwas's Arch Distrobox Setup

This repository outlines the setup for my Arch Distrobox, including the necessary scripts and configuration for a seamless development environment.

## Distrobox Assemble

To create and configure the distrobox, use the following specifications:

```bash
[arch-box]
image="quay.io/toolbx/arch-toolbox:latest"
additional_packages="git base-devel gdb bottom kitty hyfetch bat eza fzf neovim fish ttf-jetbrains-mono-nerd zoxide"
home=/home/vishwas/arch-box
replace=true
```

Ensure to import your `.bashrc`, `config.fish`, and `kitty.conf` and `paru.conf` files.

## Paru Installation

Paru is used for AUR package management. Install Paru with:

```bash
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

## Essential Software

Below are the commands to install essential software using Paru.

### Vscode Install (AUR)

```bash
paru -S visual-studio-code-bin
```

### Citrix Install (AUR)

```bash
paru -S icaclient
```

### ObinsKit (PC) Install (AUR)

```bash
paru -S obinskit
```

## Tide Installation

Tide is a modern prompt for fish shell. Install it with:

```bash
set -l _tide_tmp_dir (command mktemp -d)
curl https://codeload.github.com/ilancosman/tide/tar.gz/v6 | tar -xzC $_tide_tmp_dir
command cp -R $_tide_tmp_dir/*/{completions,conf.d,functions} $__fish_config_dir
fish_path=(status fish-path) exec $fish_path -C "emit _tide_init_install"
```

## BoxBuddy Export

Ensure the following applications are properly set up and exported:

- Kitty
- VSCode
- Citrix Receiver
- ObinsKit (PC)

## Create SSH Keys

For secure connections and repository management, generate SSH keys:

```bash
ssh-keygen
cat .ssh/id_ed25519.pub
```

Then import the public key into GitHub and other platforms as needed.
