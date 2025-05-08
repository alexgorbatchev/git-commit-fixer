#!/bin/bash -ex
# shellcheck disable=SC1091

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
cd "$SOURCE_DIR" || exit 1

uv venv .venv

[ -f .env ] && source .env
source .venv/bin/activate

# Split PIP_INSTALL_ARGS properly
if [ -n "${PIP_INSTALL_ARGS:-}" ]; then
  # shellcheck disable=SC2086
  uv pip install ${PIP_INSTALL_ARGS} -e .
else
  uv pip install -e .
fi
