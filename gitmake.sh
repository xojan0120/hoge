#!/bin/bash

user=xojan0120

if [ "$1" != "" ]; then
  curl -u ${user} https://api.github.com/user/repos -d "{\"name\":\"${1}\"}"
  git remote add origin git@github.com:${user}/${1}.git
fi

exit 0
