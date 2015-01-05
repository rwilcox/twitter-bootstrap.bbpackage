#!/bin/sh

# It's possible that $NODE_PATH isn't defined, and/or we need to
# ensure that NODE_PATH includes our global module folder so people
# can install modules there and call them from BBEdit scripts
#
# This could be because of the slightly non-standard way I've installed Node
# (NVM - https://github.com/creationix/nvm)
# but I'm not convinced. WD-rpw 03-27-2014
#

export NPM_BIN=$($SHELL -i -c 'which npm')
# let user's shell, with config options tell us where npm is. May be installed via
# homebrew, MacPorts, NVM, etc, so ask

export NODE_BINARIES_PATH=$(PATH=$PATH:`dirname $NPM_BIN` $NPM_BIN bin -g)  # avoids "npm not in path" errors. WD-rpw 03-25-2014
export NODE_BIN="$NODE_BINARIES_PATH/node"
export GLOBAL_NODE_MODULES_PREFIX=$($NPM_BIN config get prefix)
export NODE_PATH=$NODE_PATH:$GLOBAL_NODE_MODULES_PREFIX/lib/node_modules/
