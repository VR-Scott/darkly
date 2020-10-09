#!/bin/sh

ip="192.168.56.101" && [[ "$1" ]]  && ip="$1"

curl --silent -A 'ft_bornToSec' --referer "https://www.nsa.gov/" "${ip}/?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c" | grep "flag"
