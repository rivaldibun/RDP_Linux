#/bin/bash/
pulseaudio -k
mkdir /home/user/teamdrive
google-drive-ocamlfuse -cc
google-drive-ocamlfuse -label teamdrive 

rm ~/.gdfuse/teamdrive/config config
wget  https://raw.githubusercontent.com/amitstudydude/RDP_Linux/6b6cc0106c46175aa44b77156386f63835e4d564/config
cp config ~/.gdfuse/teamdrive
google-drive-ocamlfuse -label teamdrive /home/user/teamdrive