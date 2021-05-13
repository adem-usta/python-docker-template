#!/usr/bin/env bash

echo "Creating a python virtual environment ..."
python3.9 -m venv .virtualenv
source .virtualenv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt -r dev-requirements.txt
