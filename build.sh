#!/bin/bash

docker build -t webui_ubuntu .
docker volume create cuda_ubuntu_volume
docker volume ls | grep cuda_ubuntu_volume
