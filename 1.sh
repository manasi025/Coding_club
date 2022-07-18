for files in `ls *.py`
do
	filename=`echo $files | awk -F. '{ print $1 }'`;
	echo $files;
	echo $filename;
	if [ -d $filename ]
	then
		rm -rf $filename;
	fi
	mkdir $filename;
	mv $files $filename;
done