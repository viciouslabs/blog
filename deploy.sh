#!/usr/bin/env bash

# build
hugo
cp CNAME ./public

# deploy
git add *
git commit -m "Sync changes"
git push origin gh-pages
