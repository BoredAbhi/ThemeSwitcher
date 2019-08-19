# ThemeSwitcher
A XFCE theme switcher depending on time of day.

### To Dos:

1. ~~Add a folder for day/night themes and choose wallpapers at random from them.~~ ✔️
2. ~~Conky Integration~~ ❌ (starting it externally)
3. ~~Redshift integration~~ ❌ (starting it externally)
4. Fix Cron 

### Instructions:

Run script at startup and at 6:00AM & 7:00PM.

cron : 
```
0 6,19 * * * /home/<username>/Documents/MyScripts/themeSwitcher.sh 
```
