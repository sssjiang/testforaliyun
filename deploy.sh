#!/bin/bash
if [ ! -d ~/pythonenv ]; then
    mkdir -p ~/pythonenv
    cd ~/pythonenv
    python3 -m venv env
    source env/bin/activate
fi



cd $(dirname $0)

ACTION=$1

usage() {
    echo "Usage: $PROG_NAME {start|stop|restart}"
    exit 2
}

start() {
    echo "Starting..."
    pip install -r requirements.txt
    python chatdemo.py
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
