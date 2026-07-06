 #!/bin/bash
 user=$(id -u) #root user id is 0 
 if [ $user -ne 0 ];then
 echo " please run the script with root access"
 exit 1
 fi

 validate(){
    if [ $2 -ne 0 ];then
    echo " $1 is not installed throw $2 "
    exit 1
    else
    echo " $1 is installed successfully "
    fi
  }

echo "user is in root login acces"
for servers in $@;do
 echo " installing $servers server"
  dnf install $servers-server -y
  validate mysql_service $?  # here its $1=mysql & $2=$?
 
mysql_service()
{

echo "enabling the $servers service"
systemctl $1 $servers
echo "starting the mysql service"
systemctl $2 $servers
}

mysql_service enable start

 

