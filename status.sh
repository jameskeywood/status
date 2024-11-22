while true  
do
	CON=$(nmcli | grep -o "[^ ]*$" -m 1)
	BLU=$(bluetoothctl devices Connected | cut -d' ' -f3-)
	BRI=$(light)
	VOL=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -o [0-9].[0-9][0-9])
	BAT=$(cat /sys/class/power_supply/BAT0/capacity)
	xsetroot -name " $(date) | CON:${CON} | BLU:${BLU[0]} | BRI:${BRI} | VOL:${VOL} | BAT:${BAT}% "
	sleep 1
done

