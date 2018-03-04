#! /bin/bash

#get date
#today=`date +%Y-%m-%d.%H:%M:%S`
today=`date +%Y-%m-%d`
#echo $today

#creat post
if [ $# -gt 0 ];
then
	cp -f template.md _posts/$today-$1.md
else
	echo "invalid count of parameters!"
fi
