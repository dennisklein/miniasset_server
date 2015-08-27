#!/bin/bash

# exit with nonzero exit code if anything fails
set -e

# clear and re-create the out directory
rm -rf tmp || exit 0;
mkdir -p tmp

# go to tmp and clone the gh-pages repo
cd tmp
git clone "https://github.com/dennisklein/miniasset_server"
cd miniasset_server

# operate on gh-pages branch
git checkout gh-pages

if [ -z "$GH_TOKEN" ]; then
  # probably called interactively, use local config
  :
else
  # we are called by travis
  git config user.name "Travis CI"
  git config user.email "d.klein@gsi.de"
fi

# clean current docs, maybe not needed ?
#git rm -rf docs
#mkdir -p docs

# run our compile script, discussed above
cd ../..
bundle exec yard doc --output-dir ./tmp/miniasset_server/docs
cd tmp/miniasset_server

# Add files present with the commit message "Deploy to GitHub Pages".
git add .
git commit -m "Deploy to GitHub Pages"

if [ -z "$GH_TOKEN" ]; then
  git push "git@github.com:dennisklein/miniasset_server.git" gh-pages
else
  # Push
  echo "git push hidden"
  # hide any sensitive credential data that might otherwise be exposed.
  git push --force --quiet "https://${GH_TOKEN}@github.com/dennisklein/miniasset_server" gh-pages > /dev/null 2>&1
fi
