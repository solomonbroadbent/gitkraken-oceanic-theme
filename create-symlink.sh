#!/bin/sh

gitkraken_themes_folder=~/.gitkraken/themes
oceanic_theme_name=oceanic.jsonc
oceanic_theme_full_path=$gitkraken_themes_folder/$oceanic_theme_name
colour_light_blue='\033[1;34m'
colour_none='\033[0m'

# if any file (unix sense) already exists then die
if [ -e "$oceanic_theme_full_path" ]; then
	echo "\n❗️∃ ${colour_light_blue}$oceanic_theme_full_path${colour_none} already exists; exiting ∃❗️"
	exit 1
fi

ln -s $PWD/$oceanic_theme_name $gitkraken_themes_folder
echo "\n🐙🌊 ${colour_light_blue}$oceanic_theme_full_path${colour_none} symlink created 🌊🐙"
