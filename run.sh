#!/bin/bash -ex
# shellcheck disable=SC1091

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
cd "$SOURCE_DIR" || exit 1

[ -f .env ] && source .env
source .venv/bin/activate

./git-filter-repo --force --commit-callback 'import rewrite_messages; rewrite_messages.commit_callback(commit)'
