#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git checkout -b main
git add -A
git commit -m 'deploy'

# if you are deploying to https://newhand.github.io
# git push -f git@github.com:newhand/newhand.github.io.git main

# if you are deploying to https://newhand.github.io/vite-deploy-sample
git push -f git@github.com:newhand/vite-deploy-sample.git main:gh-pages

cd -