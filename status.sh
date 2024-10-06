while true  
do
	BAT=$(cat /sys/class/power_supply/BAT0/capacity)
	VOL=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -o [0-9].[0-9][0-9])
	BRI=$(light)
	xsetroot -name " $(date) BRI:${BRI} VOL:${VOL} BAT:${BAT}% "
	sleep 1
done

