if [ ! -d ~/pythonenv ]; then
    mkdir -p ~/pythonenv

fi
cd ~/pythonenv
python3 -m venv env
source env/bin/activate
pip3 install -r requirements.txt
