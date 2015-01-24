# What you'll find in this repo
This repo contains the Vagrantfile and associated scripts and configurations to bring up a VM that works for the Michael Hartl's _Ruby on Rails Tutorial, Second Edition_.

# What you'll need
First you need to install VirtualBox and Vagrant.  The installation and configuration of those tools is not covered here.

# To setup your VM
1) Add this line to your `/etc/hosts` file.

```
192.168.56.170  www.rails.dev rails.dev
```

2) Bring up the Vagrant VM

```
$ vagrant up
```

3) Login to your new virtual machine.

```
$ vagrant ssh
```

4) From within the Vagrant VM, install rvm and ruby 1.9.3

```
$ /vagrant/setup/install_rvm.sh
$ . .bash_profile
$ /vagrant/setup/install_ruby.sh
```

*Note: You may have to manually run the commands in the install_ruby.sh script for them to work.*

5) Make sure your webserver is working by visiting `http://www.rails.dev`.
