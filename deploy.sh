#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

git init
git checkout -b main
git add -A
git commit -m 'deploy'

# Deploying to https://alexperronnet.github.io/em-product-preview-card-component
git push -f git@github.com:alexperronnet/fem-product-preview-card-component.git main:gh-pages

cd -