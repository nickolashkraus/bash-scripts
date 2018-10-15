#!/usr/bin/env bash

mkdir -p $HOME/bin

dir="$(pwd)"

if [[ $dir != */ ]]; then
  dir="$dir/*"
else
  dir="$dir*"
fi

for f in $dir; do
  [ ! -d "${f}" ] && [ -x "${f}" ] || continue
  ln -s $f $HOME/bin/
done

