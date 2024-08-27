directory=/notexist


if [ -d $directory ]
then
	echo "The directory $directory exists."
	exit 0
else
	echo "The directory $directory doesn't exist."
	exit 1
fi

echo "The exit code for this script run is $?"
echo "You didn't see that statement."
echo "You won't see this one either."
