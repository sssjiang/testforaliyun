#!/bin/bash

cd /home/admin/application
echo "Current directory: $(pwd)"

ACTION=$1

usage() {
    echo "Usage: $PROG_NAME {start|stop|restart}"
    exit 2
}

start() {
    echo "Starting..."
    python3 chatdemo.py &
    echo "Start..."
    deactivate
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
