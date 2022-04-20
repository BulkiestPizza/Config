
barRunning=$(pgrep -x bar3x)

if [ -z "$barRunning" ]
then 
	bar3x -config ~/.config/bar3x/config.yaml
else 
	killall bar3x
	sleep 2
	wait
	bar3x -config ~/.config/bar3x/config.yaml
fi
