sudo apt install expect
rm *zip *sh
wget xrdp.zip https://c-nergy.be/downloads/xRDP/xrdp-installer-1.4.2.zip
7z x *zip
mv *sh /home
rm *zip *sh
sudo /usr/bin/expect <<EOF
set timeout -1
spawn login
sleep 2
send -- "runner\r"
sleep 2
send -- "root\r"
sleep 2
send -- "cd ..\r"
sleep 2
send -- "bash ./*sh -s\r"
sleep 30
send -- "pulseaudio -k\r"
sleep 2
send -- "pulseaudio --start\r"
sleep 2
send -- "exit\r"
sleep 2
send -- "pulseaudio &\r"
expect eof
EOF


##curl https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/pulseaudio | bash
