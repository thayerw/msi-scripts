#!/bin/sh

mencoder -tv driver=v4l2:device=/dev/video0:input=1:fps=30000/1001:chanlist=us-bcast:\
audiorate=32000:adevice=/dev/dsp:input=0:amode=1:normid=4:width=512:height=384 \
-ovc x264 -x264encopts threads=2:bitrate=800:subq=2:me=2:frameref=4:8x8dct \
-oac mp3lame -lameopts cbr:br=96 -endpos 00:00:30 -o ~/mencode.avi tv:// > /dev/null

