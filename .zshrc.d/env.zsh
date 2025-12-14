# Set default editor
export EDITOR=nvim

# Manual proxy toggles (default: off)
proxy_url_default="socks5://127.0.0.1:2080"

proxy_on() {
  local url="${1:-$proxy_url_default}"
  export ALL_PROXY="$url"
  export HTTPS_PROXY="$url"
  export HTTP_PROXY="$url"
  echo "Proxy ON -> $url"
}

proxy_off() {
  unset ALL_PROXY HTTPS_PROXY HTTP_PROXY
  echo "Proxy OFF"
}

proxy() {
  case "$1" in
    on) proxy_on "${2:-$proxy_url_default}" ;;
    off) proxy_off ;;
    *)
      echo "Usage: proxy on [url] | proxy off"
      return 1
      ;;
  esac
}

# No proxy for local resources (kept even when proxy is on)
export NO_PROXY="localhost,127.0.0.1,.local"
