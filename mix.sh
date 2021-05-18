#!/bin/bash

RED='\033[1;91m' # WARNINGS
YELLOW='\033[1;93m' # HIGHLIGHTS
WHITE='\033[1;97m' # LARGER FONT
LBLUE='\033[1;96m' # HIGHLIGHTS / NUMBERS ...
LGREEN='\033[1;92m' # SUCCESS
NOCOLOR='\033[0m' # DEFAULT FONT

dem=0

printf "${LGREEN} Dem Packet Node:${WHITE}" "\n\n"
for(( i=1; i <=30; i++ ))
do
	mix='nym-mixnode'
	nymmixnode=${mix}${i}
  printf '%s\n' "${nym}"
  printf '%s\n' "${i} : $(journalctl -u ${nymmixnode} -o cat | grep -i "mixed" | tail -1)"
done
printf "\n\n"
printf "\n\n"
