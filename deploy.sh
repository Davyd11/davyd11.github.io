#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build
rm -rf docs
mv dist docs
touch docs/.nojekyll
echo "davydpr.com" > docs/CNAME
git add docs
git commit -m "$(date)"
git push origin master