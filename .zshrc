#!/bin/zsh
#
# .zshrc - Zsh file loaded on interactive shell sessions.
#

# Zsh options.
setopt extended_glob

# Autoload functions you might want to use with antidote.
ZFUNCDIR=${ZFUNCDIR:-$ZDOTDIR/functions}
fpath=($ZFUNCDIR $fpath)
autoload -Uz $fpath[1]/*(.:t)

# Source zstyles you might use with antidote.
[[ -e ${ZDOTDIR:-~}/.zstyles ]] && source ${ZDOTDIR:-~}/.zstyles

# Clone antidote if necessary.
[[ -d ${ZDOTDIR:-~}/.antidote ]] ||
  git clone https://github.com/mattmc3/antidote ${ZDOTDIR:-~}/.antidote

# Create an amazing Zsh config using antidote plugins.
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

# Solution for 'complete:13: command not found: compdef'
# from https://linux-notes.org/oshibka-complete-13-command-not-found-compdef-v-zsh-na-mac-os/
autoload -Uz compinit && compinit

# Export variables HOMEBREW_PREFIX, HOMEBREW_CELLAR, HOMEBREW_REPOSITORY. По доке это нужно размещать в
# .zprofile для macOS, и в .zshrc для Linux. Тогда для сохранения идемпотентности эти переменные не добавляются, 
# если пути к bin и substring от Homebrew уже есть в PATH. Однако, в моём случае переменная HOMEBREW_PREFIX 
# задействована в других местах, поэтому важно, чтобы она была в окружении. Поэтому эта команда расположена
# именно здесь вопреки написанному в доке.
#
# Подробнее см. brew shellenv --help
eval "$(brew shellenv zsh)"

# Bind arrow up, arrow down to list history substring search
# Refer to: https://github.com/zsh-users/zsh-history-substring-search#usage
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

test -e "${ZDOTDIR}/.iterm2_shell_integration.zsh" && source "${ZDOTDIR}/.iterm2_shell_integration.zsh"

# Для NVM
[ -s "${HOMEBREW_PREFIX}/opt/nvm" ] && \. "${HOMEBREW_PREFIX}/opt/nvm/nvm.sh"
