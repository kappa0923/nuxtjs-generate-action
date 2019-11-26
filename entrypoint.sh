#!/bin/sh
set -e

if [ -e package.json ]; then
    echo "missing package.json."
    exit 1
fi

echo "Install node modules."
sh -c "npm ci"

echo "Generate a static web application."
sh -c "npm run generate"