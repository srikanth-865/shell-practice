#!/bin/bash
print_header (){
echo "============================================================"
echo "$1"
echo "============================================================"
}
print_header "Installing packages"

check_status(){
    if [ $1 -eq 0 ]; then
    echo " $2 is installed.."
    else
    echo " $2 installation failed"
    fi
}
 
 install_package(){
    sudo dnf list installed $1
    if [ $? -eq 0 ];then
    echo "$1 is already installed"
    else
      sudo dnf install "$1" -y
      check_status $? "$1"
      fi
 }

 install_package git
  install_package wget
   install_package curl



#    if [ $? -eq 0 ]
#       check_status 0 "$1"  
#       else
#       check_status 1 "$1 is failed"
#       fi