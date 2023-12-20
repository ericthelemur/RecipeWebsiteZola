#!/bin/sh
set -e

export SCRIPT_DIR=$(dirname "$(realpath $0)")
cd $SCRIPT_DIR && echo "Running in $SCRIPT_DIR"
if [ -z $NO_PULL ]; then git pull; fi

# Build main
./zola build --output-dir ../public_html/recipes --force
chmod -R 755 ../public_html/recipes
