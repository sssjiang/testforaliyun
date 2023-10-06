#!/bin/bash
cd /home/admin/pythonenv
source env/bin/activate
pip install -r /home/admin/app/requirements.txt
cd /home/admin/app
echo "Current directory: $(pwd)"

ACTION=$1
admin=$mongodbuser
password=$mongodbpassword
usage() {
    echo "Usage: $PROG_NAME {start|stop|restart}"
    exit 2
}

start() {
    echo "Starting..."
    python /home/admin/app/chatdemo.py admin password > output.log 2>&1 &
    echo "Start..."
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
