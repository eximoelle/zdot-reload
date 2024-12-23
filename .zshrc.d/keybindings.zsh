#!/bin/zsh
#
# keybindings.zsh - keybindings file
#

### Keybindings for autocomplete plugin. Read more on: https://github.com/marlonrichert/zsh-autocomplete#reassign-keys

# This makes Tab and Shift+Tab, when pressed on the command line, enter the menu instead of inserting a completion

bindkey '^I'              menu-select
bindkey "$terminfo[kcbt]" menu-select

# This makes ← and → always move the cursor on the command line, even when you are in the menu-select

bindkey -M menuselect '^[[D' .backward-char '^[OD' .backward-char
bindkey -M menuselect '^[[C' .forward-char  '^[OC' .forward-char
