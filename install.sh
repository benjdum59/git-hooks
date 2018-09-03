#!/bin/bash

allHooks=("commit-msg","pre-push" )

ls -a | grep "^\.git$" 2>/dev/null
if [ $? -ne 0 ];then
  echo "This script only works on the root path of a git repository"
  exit 1
fi

target="target-git-hooks"

rm -rf ${target}
mkdir ${target}  2>/dev/null
cd ${target}

hooks=( "$@" )
if [ ${#hooks[@]} -eq 0 ];then
  hooks=${allHooks}
fi

for hook in "${hooks[@]}"
do
  wget https://raw.github.com/benjdum59/git-hooks/master/${hook}
  chmod +x ${hook}
done

cd ..

cp -rf ${target}/* .git/hooks

rm -rf ${target}
