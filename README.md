# Stable Diffusion Webui docker setup

## Overview
This project lets you run docker container specifically for [Stable Diffusion Webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui). It runs server, that is accessible from host system. It runs fully on your machine.
> [!CAUTION]
> This is suposed to be only used by machine it runs on. Don't make it accessible through your network!!!
> You are responsible for what you create with it!!!
> It is only tested on Void Linux.

## Software Dependencies

- docker
- nvidia drivers
- nvidia container toolkit

> [!NOTE]
> Names differ on different distributins, so you have to find specific names of packages yourself.

## System requirements
- nvidia gpu
- enough memory ( I would suggest at least 8GB )

## Installation

1. run `build.sh` on HOST machine  
2. run `run.sh` on HOST machine  
This will open terminal with bash inside docker container.  
3. run `/install.sh` on DOCKER IMAGE  
This will install it and run it when installed.  
> [!NOTE]
> If you kill process, that installs it, you will be able to continue -> don't panic.
## Running
1. run `/home/user/webui.sh` or `./webui.sh` in home directory (that is where you should be rn)  
This will run webui. If you stopped instalation, before installing it completely, it will continue.  
2. open `http://127.0.0.1:7860/` in internet browser on your HOST machine.  
3. Use it...  

## Some additional information
- this image is suposed to only run [Stable Diffusion Webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui). It contains almost no software, except what is needed to use it. 
- to download models and stuff like that, you can use `wget`
