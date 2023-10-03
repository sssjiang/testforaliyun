if [ ! -d ~/pythonenv ]; then
    mkdir -p ~/pythonenv
    cd ~/pythonenv
    python3 -m venv env
    source env/bin/activate
    pip install -r requirements.txt
fi