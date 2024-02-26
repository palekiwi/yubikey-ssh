#!/bin/bash

dir=~/.venv/ansible

if [ ! -d $dir ]; then
    echo "Creating venv dir..."
    mkdir -p $dir
fi

echo "Creating python venv in ${dir}..."
python -m venv $dir

echo "Activating venv..."
source $dir/bin/activate

echo "Installing ansible..."
pip install ansible

echo -e "\nDONE"
