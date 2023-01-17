#!/bin/bash
PYTHON_VERSION="3.9"

# Check python version

if !(grep -q "$PYTHON_VERSION" <(python3 --version)); then
  echo "Python version $PYTHON_VERSION wanted, but $(python3 --version) installed"
  read -p "Continue anyways? [y/N] " -n 1 -r
  case $REPLY in 
    y | Y ) echo ;;
    *) exit 0 ;;
  esac
fi

# Setup venv in directory of script

DIR=$(dirname -- "$0")
cd $DIR

echo "-- Setting up virtual enviroment in $DIR"
python3 -m venv .

echo "-- Installing packages from requirements.txt"

. "bin/activate"
pip3 install -r requirements.txt


echo "-- Configure jupyter plugins"

# from studres readme.md
jupyter nbextension enable --py widgetsnbextension
jupyter nbextension install rise --user --py
jupyter nbextension enable rise --user --py

echo "-- Enviroment installed successfully!"
