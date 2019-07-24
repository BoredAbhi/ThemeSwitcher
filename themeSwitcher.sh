#!/bin/bash

NIGHT_WALLPAPER_DIR=~/Pictures/Dark_Wallpapers/

DAY_WALLPAPER=~/Pictures/MXDarkCity16x10Blue.png
NIGHT_WALLPAPER="$(ls ~/Pictures/Dark_Wallpapers| shuf -n 1)"

HOUR="$(date | cut -d ' ' -f 4 | cut -d ':' -f 1)"

NIGHT_WALLPAPER_PATH="$NIGHT_WALLPAPER_DIR$NIGHT_WALLPAPER"


#If time is past 6:59 PM but before 5:59 AM 
if [ $HOUR -gt 18 ] || [ $HOUR -lt 6 ]
then
	echo "Setting Night Theme"
	xfconf-query -c xsettings -p /Net/ThemeName -s "Arc-Dark"
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s $NIGHT_WALLPAPER_PATH

#Else Light Theme 
else
	echo "Setting Day Theme"
	xfconf-query -c xsettings -p /Net/ThemeName -s "Numix"
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s $DAY_WALLPAPER
fi
