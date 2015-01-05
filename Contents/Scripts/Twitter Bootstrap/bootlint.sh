#!/bin/bash
source ../../Resources/npm_paths.sh

# Wow, not proud of this. If anyone has any better ideas... RPW 01-01-2015
PATH=$PATH:$NODE_BINARIES_PATH $NODE_BINARIES_PATH/bootlint "$BB_DOC_PATH" | grep --invert "<stdin>" > /tmp/bbedit_bootlint; osascript ../../Resources/error_shim.scpt /tmp/bbedit_bootlint
