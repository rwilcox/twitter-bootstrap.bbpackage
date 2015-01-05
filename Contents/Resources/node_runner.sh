#!/bin/sh

RESOURCES_PATH=$(dirname $0)
source $RESOURCES_PATH/npm_paths.sh

$NODE_BIN "$1"
