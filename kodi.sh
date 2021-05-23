#!/bin/bash

if [ ! "$USER" = "pi" ]
then
  echo
  echo "Mustbe executed as user pi!"
  echo
  exit 1
fi

PID_FILE="$HOME/kodi.pid"

if [ "$1" = "start" ]
then
  /usr/bin/kodi --standalone  &
  CUR_PID=$!
  echo "$CUR_PID" > $PID_FILE
elif [ "$1" = "stop" ]
then
  kill `(cat $PID_FILE)`
  rm $PID_FILE
else
  echo
  echo "usage: ${0##*/} {start|stop}"
  echo
  exit 0
fi

