#!/bin/sh
time=7
dir="PATH/TO/DIR"

echo -n "Clearing old temporary files.. "
for f in $(ls $dir)
do
	creation="$(stat "$dir/$f" | grep Birth | sed 's/ Birth: //g' | cut -c -10)"
	dif=$(( ($(date -d "now" +%s) - $(date -d "$creation" +%s)) / 86400 ))
	[[ $dif -gt $time ]] && rm "$dir/$f"
done
echo "done!"
