#!/bin/bash

BRANCH=$(git rev-parse --abbrev-ref HEAD)
UN_PUSHED_FILES_STRING=$(git log origin/$BRANCH..$BRANCH --name-only --pretty="format:" | sort | uniq)

echo '1 --------------'
echo $BRANCH
echo '2 --------------'
echo $UN_PUSHED_FILES_STRING

if [[ $UN_PUSHED_FILES_STRING == *".js"* ]] 
then
echo "run karma test"
fi
if [[ $UN_PUSHED_FILES_STRING == *".scss"* ]] 
then
echo "build scss"
fi