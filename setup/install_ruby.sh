#!/bin/bash

# install ruby version 1.9.3
rvm install 1.9.3

# create the rails tutorial gemset
rvm use 1.9.3@rails3tutorial2ndEd --create --default
rvm gemset use rails3tutorial2ndEd

# make sure we have the right gem version for the tutorial
sudo gem update --system 1.8.24

cp /vagrant/setup/.gemrc $HOME

# install the rails gem
gem install rails -v 3.2.3

# Install some extra packages required for the tutorial
sudo apt-get install libxslt-dev libxml2-dev libsqlite3-dev
