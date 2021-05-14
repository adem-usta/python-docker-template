#!/usr/bin/env bash

echo "Creating a python virtual environment ..."
python3.9 -m venv .virtualenv
source .virtualenv/bin/activate

echo "Installing app, dev and tests packages ..."
pip install --upgrade pip
pip install -r requirements/requirements.txt
pip install -r requirements/dev-requirements.txt
pip install -r requirements/tests-requirements.txt
