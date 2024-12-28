#!/bin/bash

#--override=/.*/
#stow --target=/home/t/.config --no-folding --no-override --verbose=2 .config

USERNAME=$(whoami)
REPO="."
TARGET_DOTCONFIG="/home/$USERNAME/.config"



###### Hyprland ######
TARGET_HYPR="/home/$USERNAME/.config/hypr/conf"

# ml4w folders - using cp to avoid stow conflicts... for now
cp -rf -v "$REPO/.config/hypr/conf/animations" "$TARGET_HYPR"
cp -rf -v "$REPO/.config/hypr/conf/decorations" "$TARGET_HYPR"
cp -rf -v "$REPO/.config/hypr/conf/environments" "$TARGET_HYPR"
cp -rf -v "$REPO/.config/hypr/conf/keybindings" "$TARGET_HYPR"
cp -rf -v "$REPO/.config/hypr/conf/layouts" "$TARGET_HYPR"
cp -rf -v "$REPO/.config/hypr/conf/monitors" "$TARGET_HYPR"
cp -rf -v "$REPO/.config/hypr/conf/windowrules" "$TARGET_HYPR"
cp -rf -v "$REPO/.config/hypr/conf/windows" "$TARGET_HYPR"

# My Additions
#cp -rf -v "$REPO/.config/hypr/conf/dropdowns" "$TARGET_HYPR"
cp -rf -v "$REPO/.config/hypr/conf/myCustom" "$TARGET_HYPR"
cp -rf -v "$REPO/.config/hypr/conf/custom.conf" "$TARGET_HYPR/custom.conf"



###### Vim ######
cp -rf -v "$REPO/.config/nvim" "$TARGET_DOTCONFIG"


###### Tmux ######
cp -rf -v "$REPO/tmux/.tmux.conf" ~/.tmux.conf
cp -rf -v "$REPO/tmux/.tmux" "$TARGET_DOTCONFIG"



###### Terminal / Alacritty
cp -rf -v "$REPO/.config/alacritty" "$TARGET_DOTCONFIG"



###### Obsidian ######
cp -rf -v "$REPO/obsidian/.obsidian.vimrc" ~/.obsidian.vimrc
