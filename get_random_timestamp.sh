#!/bin/bash

input_file=$1

# get video duration in seconds
duration=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $input_file)

# drop the decimal part
duration_int=${duration%.*}

# choose a random second from the video
timestamp=$(($RANDOM%$duration_int))

echo $timestamp
