#!/bin/bash
DIR=$(dirname -- "$0")
cd $DIR

. bin/activate
pip3 freeze > requirements.txt
