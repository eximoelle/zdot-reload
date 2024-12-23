#!/bin/zsh
#
# .aliases - Set whatever shell aliases you want.
#

# mask built-ins with better defaults
alias vi=nvim
alias vim=nvim

# more ways to ls
alias ls='eza --icons --group-directories-first'                      # ls
alias la='eza -lbhgUma --git --icons --group-directories-first'       # all list
alias lx='eza -lbhHigUmuSa@ --git --icons --group-directories-first'  # all + extended list
alias lt='eza -a --tree --level=2 --icons --group-directories-first'  # tree

# find
alias fd='find . -type d -name'
alias ff='find . -type f -name'

# url encode/decode
alias urldecode='python3 -c "import sys, urllib.parse as ul; \
    print(ul.unquote_plus(sys.argv[1]))"'
alias urlencode='python3 -c "import sys, urllib.parse as ul; \
    print (ul.quote_plus(sys.argv[1]))"'

# misc
alias zshrc='${EDITOR:-vim} "${ZDOTDIR:-$HOME}"/.zshrc'
alias zbench='for i in {1..10}; do /usr/bin/time zsh -lic exit; done'
alias zdot='cd ${ZDOTDIR:-~}'

# NodeMCU
alias nodemcu='~/nodemcu-tool/node_modules/nodemcu-tool/bin/nodemcu-tool.js'

# aws-cli for Yandex Cloud
alias ycs3='aws s3 --endpoint-url=https://storage.yandexcloud.net'
alias ycs3api='aws s3api --endpoint-url=https://storage.yandexcloud.net'