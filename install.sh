#!/bin/bash

crontab -l | { cat; echo "* * * * * /bin/bash -l /usr/bin/checkSSHPort"; } | crontab -
crontab -l | { cat; echo "* * * * * /bin/bash -l /usr/bin/checkService sshd"; } | crontab -