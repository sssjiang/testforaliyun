if [ ! -d /home/admin/pythonenv ]; then
    mkdir -p /home/admin/pythonenv

fi
cd /home/admin/pythonenv
echo "Current directory: $(pwd)"
python3 -m venv env
source env/bin/activate
pip3 install -r /home/admin/application/requirements.txt
if [ -n "$VIRTUAL_ENV" ]; then
    echo "Python virtual environment is activated."
else
    echo "Python virtual environment is not activated."
fi
