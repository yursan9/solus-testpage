#!/bin/sh
default="/usr/share/cups/data/default-testpage.pdf"
printf "Is $default exist..."

if [ -e $default ]; then
	printf "Yes\n"
	printf "Backup %s to %s\n" "$default" "$default.bak"
	mv $default $default.bak
fi

printf "\nCopying the new test page..."
cp default-testpage.pdf $default
printf "Done\n"

echo "Enjoy your new Printer Test Page!"