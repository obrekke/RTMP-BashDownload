@echo off

rem # ------------------------------------------------------------#
rem #        BASH SCRIPT: RTMP Download v.1                       #
rem #                     by github.com/thisislola                #
rem #                                                             #
rem #      How To:                                                #
rem #        1. Replace the stream variable with the rtmp         #
rem # 	        link to download (remember the quotes!).          #
rem #        2. Replace the output variable with the path         #
rem #           to your preferred location and a file name.       #
rem #        3. Keep the original .mp4 extension for both files.  #
rem # ------------------------------------------------------------#


SET stream="rtmp://streaming.xxyyzz.no:PORT/vod/Guest_Lecture_2018-02-31.mp4"
SET output="C:\Users\thisislola\Desktop\Guest_Lecture_2018-02-31.mp4"

START C:\"Program Files (x86)"\VideoLAN\VLC\vlc.exe %stream% --sout=#transcode{vcodec=mp4v,acodec=mp4a}:std{access=file,mux=mp4,dst=%output%} 

quit
