#!/bin/bash

# clean up
rm -f apparmor-example-sh-profile

# copy the profile to /etc/apparmor.d
sudo cp profile/apparmor-example-sh-profile /etc/apparmor.d/

# change home directory in a profile
sudo sed -i "s/USER/$USER/g" /etc/apparmor.d/apparmor-example-sh-profile

# apply the profile
sudo apparmor_parser -r -W /etc/apparmor.d/apparmor-example-sh-profile

# create a link
ln -s /etc/apparmor.d/apparmor-example-sh-profile
