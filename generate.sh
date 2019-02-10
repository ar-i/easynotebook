#!/bin/bash

if ! [ -d ./site/posts ]; then mkdir -p ./site/posts; fi

for post in posts/*.md; do
	postdate=$(grep "date:" $post | tr -d "date: ")
	postname=$(grep "title:" $post | sed 's/title\:\ //g' | sed 's/\ /\_/g').html
	sed -n '/~CONTENTSTART/,/~CONTENTEND/p' $post | grep -v "^\~" > /tmp/$post

	pandoc -s --self-contained --css style.css -o ./site/posts/$postname /tmp/$post
	echo -e "INDEXSTART\n$(grep "title:" $post | sed 's/title\:\ //g')\nINDEXEND " >> ./site/posts/$postname
	touch -d $postdate ./site/posts/$postname
done

pandoc -s --self-contained --css style.css -o ./site/index.html index.md

echo '<ul>' >> ./site/index.html
for post in $(ls -lt site/posts/ | grep "^\-" | awk '{print $9}'); do
	postname=$(sed -n '/INDEXSTART/,/INDEXEND/p' site/posts/$post | sed 's/INDEXSTART//g; s/INDEXEND//g')
	echo '<li><a href=./posts/'$post'>'$postname'</a></li>' >> ./site/index.html
done
echo '</ul></hr>' >> ./site/index.html
