#!/bin/sh

LRED='\033[1;31m'
NC='\033[0m'

SCRIPT_DIR="$(dirname $0)"
GIT_DIR=$(git rev-parse --show-toplevel)

if test -z "$GIT_DIR"
then
    echo ${LRED}No .git found to move pre-commit hook.${NC}
    exit 1
fi

cp ${SCRIPT_DIR}/pre-commit ${GIT_DIR}/.git/hooks/pre-commit
chmod +x ${GIT_DIR}/.git/hooks/pre-commit