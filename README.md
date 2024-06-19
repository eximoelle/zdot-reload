Проект создан на основе [getantidote/zdotdir](https://github.com/getantidote/zdotdir) с некоторыми правками и дополнениями под себя.

# Установка
1. Переменная.
   ```
   ZDOTDIR=~/.config/zsh
   ```
2. Клонировать репо.
   - по SSH:
   ```
   git clone git@github.com:eximoelle/zdot-reload.git $ZDOTDIR
   ```
   - или через HTTPS:
   ```
   git clone https://github.com/eximoelle/zdot-reload $ZDOTDIR
   ```
3. Символьная ссылка на конфиг.
   Бэкап существующего, если есть:
   ```
   [[ -f ~/.zshenv ]] && mv -f ~/.zshenv ~/.zshenv.bak
   ```
   Ссылка:
   ```
   ln -s $ZDOTDIR/.zshenv ~/.zshenv
   ```
4. Перезапуск шелла.
   ```
   zsh
   ```
   Или открыть новую вкладку терминала.
