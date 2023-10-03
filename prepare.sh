if [ ! -d ~/pythonenv ]; then
    mkdir -p ~/pythonenv

fi
echo "Current directory: $(pwd)"
cd ~/pythonenv
python3 -m venv env
source env/bin/activate
pip3 install -r /home/admin/application/requirements.txt
if [ -n "$VIRTUAL_ENV" ]; then
    echo "Python virtual environment is activated."
else
    echo "Python virtual environment is not activated."
fi
