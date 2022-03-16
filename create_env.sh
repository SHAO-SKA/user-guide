#!/usr/bin/env bash

# Create the ENV for the user guide

PYTHON=python3

${PYTHON} -m venv ./venv
./venv/bin/python3 -m pip install --upgrade pip
./venv/bin/python3 -m pip install -r requirements.txt