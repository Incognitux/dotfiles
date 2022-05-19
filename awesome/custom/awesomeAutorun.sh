#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run redshift
run nm-applet
run flameshot
run picom -b --experimental-backends
run copyq
