#!/bin/bash
cp checkSSHPort /usr/bin/checkSSHPort
cp checkService /usr/bin/checkService
chmod +x /usr/bin/checkService
chmod +x /usr/bin/checkSSHPort
crontab -l | { cat; echo "* * * * * /bin/bash -l /usr/bin/checkSSHPort"; } | crontab -
crontab -l | { cat; echo "* * * * * /bin/bash -l /usr/bin/checkService sshd"; } | crontab -