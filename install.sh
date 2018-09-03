#!/bin/bash

#token="88f4def63f2f7f5fdb764732b68c160d139fcadc"

ls -a | grep "^\.git$" 2>/dev/null
if [ $? -ne 0 ];then
  echo "This script only works on the root path of a git repository"
  exit 1
fi

target="target-git-hooks"

rm -rf ${target}
mkdir ${target}  2>/dev/null
cd ${target}

wget https://raw.github.com/benjdum59/git-hooks/master/commit-msg


