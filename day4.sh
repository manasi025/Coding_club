for files in `ls *.txt *.py *.doc *.pdf *.html`
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
	mkdir $folder2;
	mv $filename ../$folder2/backup;
	mv day4.sh ../$folder2/backup;
done