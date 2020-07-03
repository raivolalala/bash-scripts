#!/bin/bash

FILE=$1;
if [ !-z "$FILE" ] ; then
	ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.webm}.mp3";
else
	for FILE in *.webm; do
		echo -e "Processing video '\e[32m$FILE\e[0m'";
		ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.webm}.mp3";
	done;
fi
rm *.webm
