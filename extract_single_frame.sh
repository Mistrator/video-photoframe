#!/bin/bash

input_file=$1
timestamp_seconds=$2

# deinterlace and extract a single frame
ffmpeg -ss $timestamp_seconds -i $input_file -vf yadif -vframes 1 -y random_frame.png
