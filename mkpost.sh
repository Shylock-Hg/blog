#! /usr/bin/env bash

today=$(date +%Y-%m-%d)

post=""  #!< name of post

while getopts 'n:h' args
do
	case $args in
		n)  #!< name of post
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
			sed -i  -e "/^title:\|^title*:/c title: \"$title\"" \
				-e "/^date:\|^date*:/c date: $today" \
				_posts/"$today"-"$OPTARG".md
			# replace date content
			#sed -i "s/2018-02-27/$today/g" _posts/"$today"-"$OPTARG".md
			#sed -i "/^date:\|^date*:/c\
			#	date: $today" _posts/"$today"-"$OPTARG".md


			if [ -e _posts/$today-$OPTARG.md ]
			then
				post=$OPTARG
				echo "create file!"
			fi

			;;
		#t)  #!< tags list ['tag0','tar1'...]
		#	if [ -e _posts/"$today"-"$post".md ]
		#	then
		#		sed -i "/^tags:\|^tags\*:/c\
		#			tags: $OPTARG" _posts/"$today"-"$post".md
		#	fi
		#	;;
		h)
			echo "usage: $0 -n <name-of-post> tag0 tag1 ..."
			;;
		?)
			echo "Unknown argument $OPTARG!"
			;;
	esac
done

shift $(($OPTIND - 1))

#! get tags list
#tags=${*/[^ ]\+/"&"}
if [ -n "$*" ] && [ -e _posts/"$today"-"$post".md ]; then
	tags=$(sed -e "s/[^ ]\+/\'&\'/g" -e 's/^.\+$/[&]/g' -e 's/ \+/,/g' <<< "$*")

	sed -i "/^tags:\|^tags*:/c\
		tags: $tags" _posts/"$today"-"$post".md
	echo "add tags!"
fi

