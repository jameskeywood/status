while true  
do
	CON=$(nmcli | grep -o "[^ ]*$" -m 1)
	BRI=$(light)
	VOL=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -o [0-9].[0-9][0-9])
	BAT=$(cat /sys/class/power_supply/BAT0/capacity)
	xsetroot -name " $(date) | ${CON} | BRI:${BRI} | VOL:${VOL} | BAT:${BAT}% "
	sleep 1
done

