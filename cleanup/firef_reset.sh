

#simple script to reset user specific firefox profile and import preferences
#02.04.2022

pkill -f firefox
rm -r ~/.mozilla/firefox/*

firefox -headless & 2> /dev/null 
sleep 2
pkill -f firefox

cp ~/.setup/startup/firefox/prefs.js ~/.mozilla/firefox/*.default-release

