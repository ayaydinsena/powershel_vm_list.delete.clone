#!/bin/bash
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

if [ -n "$1" -a "$2" ]; then
./list_vm_in_pool.ps -resourcepool $1 -vmname $2;
else
echo ${red} 'ERROR!' ${reset}
echo 'Enter the parameters sequentially'
echo 'Format is like this'
echo ${green}'./list_vm_in_pool.sh resourcepool vmname(or like)'${reset} 
echo 'Sample:'
echo ${green}'./list_vm_in_pool.sh linux web_lnx' ${reset}
exit
fi

