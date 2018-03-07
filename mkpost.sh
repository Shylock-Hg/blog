#! /bin/bash

#get date
#today=`date +%Y-%m-%d.%H:%M:%S`
today=`date +%Y-%m-%d`
#echo $today

#creat post
#if [ $# -gt 0 ]
#then
#	cp -f template.md _posts/$today-$1.md
#else
#	echo "invalid count of parameters!"
#fi

while getopts 'n:' args
do
	case $args in
		n)
                        if [ ! -e _posts/ ] 
                        then
                                mkdir _posts
                        fi

			cp -f template.md _posts/$today-$OPTARG.md

                        if [ -e _posts/$today-$OPTARG.md ]
                        then
                                echo "ok!"
                        fi
			;;
		?)
			echo "Unknown argument $OPTARG!"
			;;
	esac
done

shift $(($OPTIND - 1))
