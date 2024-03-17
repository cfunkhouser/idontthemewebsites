#!/bin/zsh
# This script builds static assets for production, which should be checked in.
#
# It expects to be run from the idontthemewebsites root directory.

set -e

export NODE_ENV=production
npx postcss \
    -o ./assets/css/main.css \
  ./tailwind/main.css \
