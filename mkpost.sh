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

			# replace dash by space
			title=`echo $OPTARG | sed -e "s/\-/ /g"`
			# uppercase first letter of each word
			title=`echo $title | sed -e "s/\b\(.\)/\u\1/g"`
			# create post by template
			cp -f template.md _posts/$today-$OPTARG.md
			# replace title content
			#sed -i "s/Welcome to Jekyll!/$title/g" _posts/"$today"-"$OPTARG".md
			sed -i "/^title:\|^title\*:/c\
				title: $title" _posts/"$today"-"$OPTARG".md
			# replace date content
			#sed -i "s/2018-02-27/$today/g" _posts/"$today"-"$OPTARG".md
			sed -i "/^date:\|^date\*:/c\
				date: $today" _posts/"$today"-"$OPTARG".md


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
