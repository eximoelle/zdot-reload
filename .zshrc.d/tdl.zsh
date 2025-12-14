# Переменные для telegram-downloader

# Namespace for Telegram session (default "default")
TDL_NS="default"

# Proxy address, format: protocol://username:password@host:port
#TDL_PROXY=""

# Storage options, format: type=driver,key1=value1,key2=value2. 
# Available drivers: [legacy,bolt,file] (default [type=bolt,path=/home/runner/.tdl/data])
# Format: {"type": "bolt", "path": "/path/to/data-dir"}
#TDL_STORAGE="{\"type\": \"bolt\", \"path\": \"/home/maxlion/Downloads/TDL\"}"

#TDL_SIZE=""

# Max threads for transfer one item (default 4)
TDL_THREADS="1"

# Max number of concurrent tasks (default 2)
TDL_LIMIT="1"

# Sspecify the size of the DC pool, zero means infinity (default 8)
TDL_POOL="0"

# NTP server host, if not set, use system time
#TDL_NTP=""

# Telegram client reconnection backoff timeout, infinite if set to 0 (default 5m0s)
#TDL_RECONNECT_TIMEOUT="40m0s"

#TDL_TEMPLATE

# Экспортируем только если бинарник tdl доступен
if command -v tdl >/dev/null 2>&1; then
  # === Экспортируем все переменные, начинающиеся с TDL_ ===
  for var in ${(k)parameters}; do
    if [[ "$var" == TDL_* ]]; then
      export "$var"
    fi
  done
fi
