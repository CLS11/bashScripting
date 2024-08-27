myvar=1

while [ -f ~/testfile ]
do
	echo "The test file exists."
done

echo "The file no longer exists. Exiting."
