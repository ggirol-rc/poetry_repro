#!/usr/bin/env bash

set -x

venv=$(mktemp -d)

virtualenv $venv
source $venv/bin/activate
pip install poetry
pushd lib
poetry install
popd
pushd app
poetry install
pip check
