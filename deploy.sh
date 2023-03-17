#!/usr/bin/env bash

# build
hugo
cp CNAME ./public

# deploy
cd public
git add *
git commit -m "Sync changes"
git push origin gh-pages
cd ..
