#!/bin/bash

export root="/home/USERNAME"
export dir_name=$(date "+%Y-%m")
export current_time=$(date "+%Y-%m-%d-%H.%M")

mkdir -p $root/images/house/$dir_name
ffmpeg -y -loglevel fatal -rtsp_transport tcp -i rtsp://user:pass@192.168.1.123:554 -frames:v  2 -r 1 $root/images/cam1/$dir_name/cam1_$current_time.jpg

mkdir -p $root/images/drive/$dir_name
ffmpeg -y -loglevel fatal -rtsp_transport tcp -i rtsp://user:pass@192.168.1.124:554 -frames:v  2 -r 1 $root/images/cam2/$dir_name/cam2_$current_time.jpg
