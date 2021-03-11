#!/bin/bash
while true  
do
	BATTERY=$(cat /sys/class/power_supply/BAT0/capacity)
	xsetroot -name "$(date) ${BATTERY}%"
	sleep 1
done

