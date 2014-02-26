#!/bin/sh

#need set the blog site git folder path
# GITHUB_PAGE_PATH

echo "GITHUB PAGE PATH: " $GITHUB_PAGE_PATH

jekyll build --destination $GITHUB_PAGE_PATH

CUR_PATH=`pwd`

cd $GITHUB_PAGE_PATH
#after create, need commit and push
git add .
git commit -a -m "update the blog"
git push

cd $CUR_PATH