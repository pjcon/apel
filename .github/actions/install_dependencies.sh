#!/bin/env bash

# Ubuntu specific dependencies
if grep Ubuntu /etc/os-release &> /dev/null; then

    # Fix missing my_config.h for MySQL-python
    sudo wget https://raw.githubusercontent.com/paulfitz/mysql-connector-c/master/include/my_config.h -P /usr/include/mysql/

    # Fix missing lber.h for python-ldap
    sudo apt-get install libsasl2-dev libldap2-dev libssl-dev
fi


python -m pip install --upgrade pip

if [ -f requirements.txt ]; then 
    pip install -r requirements.txt;
fi

if [ -f requirements-test.txt ]; then
    pip install -r requirements-test.txt; 
fi
