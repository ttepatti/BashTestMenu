#!/bin/bash
# This is an attempt to make a Batch Zine-like menu in Bash
clear
echo "x       _____        ______          ____        _____     x"
echo "x   ___|\    \   ___|\     \    ____|\   \   ___|\    \    x"
echo "x  |    |\    \ |     \     \  /    /\    \ |    |\    \   x"
echo "x  |    | |    ||     ,_____/||    |  |    ||    | |    |  x"
echo "x  |    | |    ||     \--'\_|/|    |__|    ||    | |    |  x"
echo "x  |    | |    ||     /___/|  |    .--.    ||    | |    |  x"
echo "x  |    | |    ||     \____|\ |    |  |    ||    | |    |  x"
echo "x  |____|/____/||____ '     /||____|  |____||____|/____/|  x"
echo "x  |    /    | ||    /_____/ ||    |  |    ||    /    | |  x"
echo "x  |____|____|/ |____|     | /|____|  |____||____|____|/   x"
echo "x    \(    )/     \( |_____|/   \(      )/    \(    )/     x"
echo "x     '    '       '    )/       '      '      '    '      x"
echo "x                       '                                  x"
PS3='Please enter your choice: '
options=("Open Tepatti.com" "Watch ASCII Starwars" "Open irssi" "Quit")
select opt in "${options[@]}"
do
	case $opt in
		"Open Tepatti.com")
			xdg-open http://tepatti.com
			;;
		"Watch ASCII Starwars")
			telnet towel.blinkenlights.nl
			;;
		"Open irssi")
			irssi
			;;
		"Quit")
			break
			;;
		*) echo invalid option;;
	esac
done
