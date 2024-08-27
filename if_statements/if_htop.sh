nd=/usr/bin/htop

if [ -f $command ]
then
	echo "$command is available."
else
	echo "$command is not available."
	sudo apt update && sudo apt install -y htop
fi

$command
