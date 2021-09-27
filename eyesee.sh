#!/bin/bash

read -p 'IP: ' targetvar
read -p 'http or https: ' statusvar
read -p 'port: ' portvar
echo
using $targetvar;
using $statusvar;
feroxbuster --url $statusvar://$targetvar:$portvar --depth 2 --wordlist /usr/share/dirb/wordlists/common.txt -k | grep -Eo "(http|https)://[a-zA-Z0-9./?=_%:-]*" | sort -u > visuals.txt 

eyewitness -f visuals.txt 


