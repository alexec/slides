#! /bin/sh
set -eux

PID=$(ps -aef|grep node|grep -v grep|awk '{print $2}')
if [ "" != "$PID" ]; then
    kill $PID
fi

node plugin/notes-server & 

sleep 1 

open http://localhost:1947
