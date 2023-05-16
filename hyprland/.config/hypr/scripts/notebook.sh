#!/usr/bin/env bash
cd /home/yungj/Resources/notes/yungjbrain && alacritty -o font.size=25 -e nvim 0000\ home.md -n -c "lua vim.wo.wrap = not vim.wo.wrap" -c "ZkNotes"
