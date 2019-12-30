#!/bin/bash

#This schows new Viedoclips. Script is tested with Kubuntu 19.10 and uses notify-send Popup-Window
#dl_folder should be the same as in youtube-dl.sh
#if you use the default,you need not edit this script.
#If you want to be noticed regulary there is a line for your user crontab

#0 *  * * *  XDG_RUNTIME_DIR=/run/user/$(id -u) /home/foo/bin/yt-dl-send-notify.sh



dl_folder=~/Downloads/youtube-dl/
f=$(find $dl_folder -mtime 0 -type f -regex '.*\.\(mkv\|mp4\|wmv\|flv\|webm\|mov\)')
folder1=$(echo $dl_folder|sed "s/\//\\\\\//g")
f1=$(echo "$f"|sed "s/$folder1/\n/g")

notify-send "Neue Videos": "$f1" --icon=video-x-generic
