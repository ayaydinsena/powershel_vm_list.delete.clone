#!/bin/bash
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

if [ -n "$1" -a "$2" -a "$3" ]; then
./create_clone_vm.ps -vm_name $1 -datastore $2 -resourcepool $3;
else
echo ${red} 'ERROR!' ${reset}
echo 'Enter the parameters sequentially'
echo 'Format is like this'
echo ${green}'./create_clone_vm.sh vm_name datastore resourcepool'${reset} 
echo 'Sample:'
echo ${green}'./create_clone_vm.sh web_lnx1 datastore1 linux' ${reset}
exit
fi

