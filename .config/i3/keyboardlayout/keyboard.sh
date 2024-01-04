#!/bin/bash
VAR="$(setxkbmap -query | grep layout)"

if [[ $VAR =~ .*us.* ]]; then
	setxkbmap -layout latam
elif [[ $VAR =~ .*latam.* ]]; then
	setxkbmap -layout us
else
	setxkbmap -layout us
fi

