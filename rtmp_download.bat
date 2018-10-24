@echo off

rem # ------------------------------------------------------------#
rem #        BASH SCRIPT: RTMP Download v.1                       #
rem #                     by github.com/thisislola                #
rem # ------------------------------------------------------------#


SET stream="rtmp://streaming.xxyyzz.no:PORT/vod/Guest_Lecture_2018-02-31.mp4"
SET output="C:\Users\thisislola\Desktop\Guest_Lecture_2018-02-31.mp4"

START C:\"Program Files (x86)"\VideoLAN\VLC\vlc.exe %stream% --sout=#transcode{vcodec=mp4v,acodec=mp4a}:std{access=file,mux=mp4,dst=%output%} 

quit
