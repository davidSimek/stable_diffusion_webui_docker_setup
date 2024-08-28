#!/bin/bash

# file: files/install.sh
wget -q https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh
mv /webui.sh /home/user/
cd /home/user/
chmod +x ./webui.sh
./webui.sh
