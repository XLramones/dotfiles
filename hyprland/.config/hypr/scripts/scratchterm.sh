#!/usr/bin/env bash
if [[ -n $(hyprctl -j workspaces | jq '.[].name | select(.=="special:term")') ]]; then
  hyprctl dispatch togglespecialworkspace term
else
  hyprctl dispatch exec [noblur\;workspace special:term] "alacritty --config-file=/home/yungj/.config/alacritty/alacrittypop.yml --class spadterm -e tmux new -As pop"
  sleep 0.2
  hyprctl dispatch togglespecialworkspace term
fi
