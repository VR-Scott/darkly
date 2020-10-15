#!bin/bash

mkdir ./info
wget --mirror -q -A  README -P ./info -e robots=off 192.168.1.109/.hidden/
find ./info -name README | xargs grep [0-9] | cut -d : -f2