#!/bin/bash
red=`tput setaf 1`
reset=`tput sgr0`
if [ -n "$1" ]; then
./delete_vm.ps -vm_name $1;
else
 echo  ${red} 'ERROR!'
echo 'Enter the parameters sequentially' ${reset}
echo 'Format is like this'
echo ${green}'./delete_vm.ps vm_name'${reset}
echo 'Sample:'
echo ${green}'./delete_vm.ps web_lnx1' ${reset}
exit
fi

