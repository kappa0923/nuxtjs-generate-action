#!/bin/sh
set -e

echo "Install node modules."
sh -c "npm ci"

echo "Generate a static web application."
sh -c "npm run generate"