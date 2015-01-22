#!/bin/bash

# install ruby version 1.9.3
rvm install 1.9.3

# create the rails tutorial gemset
rvm use 1.9.3@rails3tutorial2ndEd --create --default
