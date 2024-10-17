#!/usr/bin/env bash

set -ex

venv=$(mktemp -d)

virtualenv $venv
source $venv/bin/activate
pip install poetry
pushd uniquelibname
poetry install
popd
pushd uniqueappname
poetry install
pip check
