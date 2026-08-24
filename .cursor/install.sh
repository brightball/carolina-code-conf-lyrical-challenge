#!/usr/bin/env bash
# Idempotent polyglot toolchain bootstrap for the Carolina Code Conf Lyrical
# Challenge. The Cloud Agent default image already ships Python, Node.js, Java,
# Go, Rust, GCC/G++, Perl and Bash. This script adds the remaining commonly
# used interpreters/compilers for the challenge's most represented languages so
# contributors can write and syntax-check their lyric entries.
set -euo pipefail

PACKAGES=(
  ruby        # ruby/*.rb entries
  php-cli     # php/*.php entries
  lua5.4      # lua/*.lua entries
  sqlite3     # sql/*.sql entries
)

# Only touch apt when something is actually missing so reruns are cheap.
missing=()
command -v ruby     >/dev/null 2>&1 || missing+=(ruby)
command -v php      >/dev/null 2>&1 || missing+=(php-cli)
command -v lua5.4   >/dev/null 2>&1 || missing+=(lua5.4)
command -v sqlite3  >/dev/null 2>&1 || missing+=(sqlite3)

if [ "${#missing[@]}" -gt 0 ]; then
  echo "Installing missing toolchains: ${missing[*]}"
  sudo apt-get update -qq
  sudo DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends "${missing[@]}"
else
  echo "All extra toolchains already present; nothing to install."
fi

echo "=== Installed language toolchains ==="
for probe in \
  "ruby --version" \
  "php --version" \
  "python3 --version" \
  "node --version" \
  "java -version" \
  "go version" \
  "rustc --version" \
  "gcc --version" \
  "perl --version" \
  "bash --version" \
  "lua5.4 -v" \
  "sqlite3 --version"; do
  printf '%-8s -> ' "${probe%% *}"
  $probe 2>&1 | head -1 || echo "unavailable"
done
