#!/bin/env bash

# Docker container IP address
export APEL_TEST_HOSTNAME='172.18.0.1' 
export PYTHONPATH=$PYTHONPATH:`pwd -P`

cd test
coverage run --branch --source=apel,bin -m unittest2 discover --buffer