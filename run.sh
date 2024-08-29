#!/bin/bash

docker run --gpus all -it --network host -v cuda_ubuntu_volume:/home/user -p 7860:7860 webui_ubuntu
