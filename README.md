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

# Некоторые возможности

## `/functions`

### `a` 

```
$ a (<some JSON text>)
```

Делает из JSON заданного вида таблицу в Markdown. Используется для преобразования скопированной из Backoffice информации в человекочитаемый формат.

### `q`

```
$ q (<some plain text>)
```

Добавляет символ цитирования `>` в начало каждой новой строки. Удобно для превращения текста пересылаемого письма в цитированный текст.

### yazi cwd

yazi — это файловый менеджер. После закрытия текущая директория изменяется на ту, с которой работали в yazi.

Решение взято из [официальной документации](https://yazi-rs.github.io/docs/quick-start#shell-wrapper).
