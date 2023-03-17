#!/usr/bin/env bash

# build
hugo
cp CNAME ./public

# deploy
cd public
git stash
git fetch
git checkout gh-pages
git reset --hard origin/gh-pages
git stash apply
git add *
git commit -m "Sync changes"
git push origin gh-pages
cd ..
