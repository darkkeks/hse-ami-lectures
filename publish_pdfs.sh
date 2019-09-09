#!/bin/bash

git clone git@github.com:DarkKeks/hse-ami-lectures-pdf.git

mv _build/* hse-ami-lectures-pdf

cd hse-ami-lectures-pdf
git add -A 
git commit --allow-empty -m "$TRAVIS_COMMIT_MESSAGE"
git push origin master
