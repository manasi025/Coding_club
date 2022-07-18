
read -p "Enter folder name : " folder

if [ $folder == "xyz" ]
then
	echo "Correct folder found";
elif [[ $folder == "ab" ]]; 
then
	echo "Folder created";
elif [[ $folder == "man" ]];
then 
	echo "Folder created";
else
	echo "Folder already exists!!";
fi
mkdir $folder;
