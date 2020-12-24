#!/bin/bash

# clean up
rm -f bash apparmor-bash-profile

# remove the profile from apparmor
sudo apparmor_parser -R /etc/apparmor.d/apparmor-bash-profile

# remove the profile from /etc/apparmor.d
sudo rm /etc/apparmor.d/apparmor-bash-profile
