#!/bin/zsh
# This script runs a dev server and postcss in watch mode, to regenerate dev
# assets during development.
#
# It expects to be run from the idontthemewebsites root directory.

set -e

npx live-server \
    --entry-file=landing.html \
    --mount=/:./static \
    --no-browser \
    --no-css-inject \
  ./tailwind \
&

npx postcss \
    -o ./static/css/main.css \
    --watch \
  ./tailwind/main.css \
&

wait
