#!/bin/bash

# clean up
rm -f bash apparmor-bash-profile

# copy bash
cp /bin/bash .

# copy the profile to /etc/apparmor.d
sudo cp profile/apparmor-bash-profile /etc/apparmor.d/

# change home directory in a profile
sudo sed -i "s/USER/$USER/g" /etc/apparmor.d/apparmor-bash-profile

# apply the profile
sudo apparmor_parser -r -W /etc/apparmor.d/apparmor-bash-profile

# create a link
ln -s /etc/apparmor.d/apparmor-bash-profile
