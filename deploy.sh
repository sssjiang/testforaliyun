#!/bin/bash

if [ -n "$VIRTUAL_ENV" ]; then
    echo "Python virtual environment is activated."
else
    echo "Python virtual environment is not activated."
fi
cd $(dirname $0)

ACTION=$1

usage() {
    echo "Usage: $PROG_NAME {start|stop|restart}"
    exit 2
}

start() {
    echo "Starting..."
    python3 chatdemo.py
}
stop() {
    echo "Stoping..."
}
case "$ACTION" in
    start)
        start
    ;;
    stop)
        stop
    ;;
    restart)
        stop
        start
    ;;
    *)
        usage
    ;;
esac
