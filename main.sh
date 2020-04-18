#!/bin/bash

video_folder=$1

# select a random file from the folder
filename=$(find $video_folder -type f | shuf -n 1)
timestamp=$(./get_random_timestamp.sh $filename)

echo $(date) $filename $timestamp >> displayed_frames

./extract_single_frame.sh $filename $timestamp
