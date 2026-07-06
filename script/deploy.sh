#!/bin/bash

pid=$(pgrep -f 'my-app-1.0.jar')
if [ -n "$pid" ]; then
    kill -9 $pid
fi

nohup java -jar /app/my-app-1.0.jar > /app/app.log 2>&1 &