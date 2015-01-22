#!/bin/bash

# install the mpapis public key
printf "\nInstalling the mpapis public key...\n"
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3

# install the latest stable version of rvm
printf "\nInstalling the latest stable version of rvm...\n"
curl -sSL https://get.rvm.io | bash -s stable

# install ruby version 1.9.3
printf "\nInstalling ruby version 1.9.3\n"
rvm get head && rvm reload

printf "\nrvm should be installed now.\n"
printf "Before you use it you will need to source your profile.\n"
