#!/bin/bash
sleep 5
sudo systemctl start chrome-remote-desktop@$USER
bash *.sh
- name: Create SSH Access
      uses: mxschmitt/action-tmate@v3