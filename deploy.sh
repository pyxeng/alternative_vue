#!/bin/bash

rm -rd dist
rm -rd bbanho.github.io/*


yarn build
yarn generate
yes | cp -r dist/* bbanho.github.io
cp CNAME bbanho.github.io/

cd bbanho.github.io

git add .
git commit -m "publish"
git push
