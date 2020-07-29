#!/bin/bash

clear
echo " "
bar ()
{
BAR='0 1 0 1 \e[00;31m 0 1 \e[00;43m 0 1 \e[00;34m !'    
                         
for i in {0..58}; do
    echo -ne "\r${BAR:0:$i}" 
    sleep 0.03
done
}
bar
echo " "
echo " "
echo -e "\e[00;44m______________________\e[00mSENTINELGRAB\e[00;44m______________________\e[00m"
echo " "

echo -e "\e[01;34m--------------------------------------\e[00m"
echo -e "Social engineering honeypot\e[00m"
echo -e "\e[01;34m--------------------------------------\e[00m"
echo -e "\e[00;38mTesting tool for trace social media stalkers\e[00m"
echo -e "\e[01;34m______________________________________\e[00m"
echo " "
echo -e "CODENAME: RED6\e[00;33m\e[00m "
echo -e "-- \e[00;31m Coded for security testing - The author decline any responsability for 
any illegal use of this tool\e[00m"
echo " "
bar
echo -e "\e[01;34mcoded by Cignoraptor\e[00m --- contact for advanced versions or suggestions > \e[00;34mcignoraptor@tutanota.com\e[00m"
echo " "

echo -e "\e[00;33mChecking for resources: \e[00m"
command -v apache2 >/dev/null 2>&1 || { echo "apache2 it's not installed.  Aborting." >&2; exit 1; }
:
command -v shred >/dev/null 2>&1 || { echo "shred it's not installed.  Aborting." >&2; exit 1; }
:
sleep 0.5

        echo -e "\e[00;33mStarting..."
        sleep 1
        cd mod
        sudo bash mstart.sh
        cd - > /dev/null
        
