setxkbmap -model abnt2 -layout br 
POST_UP="iwconfig wlan0 rate 12M fixed"

PS1='\[\033[0;31m\]\u \[\033[1;36m\]\W\n\[\033[1;32m\] > \[\033[00m\]'

PATH=$PATH:/home/everton/scripts/
