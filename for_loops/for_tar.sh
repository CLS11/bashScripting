for file in logfiles/*.log
do 
	tar -czvf $files.tar.gz $file
done
