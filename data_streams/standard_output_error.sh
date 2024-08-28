release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

if grep -q "Arch" $release_file
then 
	sudo pacman -Syu 1>>$logfile 2>>$errorlog
	if [ $? -ne 0 ]
	then
		echo "An error occurred, please check the $errorlog file."
	fi
fi

if grep -q "Pop" $release_file || grep -q "Ubuntu" $release_file
then
	sudo apt update 1>>$logfile 2>>$errorlog
	 if [ $? -ne 0 ]
        then
                echo "An error occurred, please check $errorlog file."
        fi
	sudo apt dist-upgrade -y 1>>$logfile 2>>$errorlog
	if [ $? -ne 0 ]
	then
		echo "An error occurred, please check $errorlog file."
	fi
fi
