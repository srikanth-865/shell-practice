#!/bin/bash

set -e
USERID=$(id -u)
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

trap 'echo "error at $LINENO", command: $BASH_COMMAND"' ERR

# Check root access or not
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi



for package in $@
do
    echo "$TIMESTAMP [INFO] Installing $package"
    dnf list installed $package &>> $LOGS_FILE
    if [ $? -ne 0 ]; then
        dnf install $package -y &>> $LOGS_FILE
        
    else
        echo -e "$TIMESTAMP [INFO] $package already installed ... $Y SKIPPING $N"
    fi
done




# so if we use set -e and trap command any error occurs it will come out of execution and print trap command 

# Yes, that's correct in most cases.

# When you use set -e together with trap ERR:

# A command fails (returns a non-zero exit status).
# The ERR trap executes.
# Because of set -e, the script exits immediately (unless the failure occurs in one of the shell's exceptions, such as certain if conditions).
# Example
# #!/bin/bash

# set -e

# trap 'echo "Error occurred. Exiting..."' ERR

# echo "Step 1"

# mkdir /tmp/demo

# mkdir /tmp/demo    # This fails if the directory already exists

# echo "Step 2"
# Output
# Step 1
# mkdir: cannot create directory '/tmp/demo': File exists
# Error occurred. Exiting...

# Notice that Step 2 is never printed because:

# mkdir failed.
# trap ERR printed the error message.
# set -e terminated the script.


# Without set -e -------------------------------------------------
# #!/bin/bash

# trap 'echo "Error occurred"' ERR

# echo "Step 1"

# mkdir /tmp/demo

# mkdir /tmp/demo

# echo "Step 2"

# Output:

# Step 1
# mkdir: cannot create directory '/tmp/demo': File exists
# Error occurred
# Step 2

# Here, the script continues because set -e is not enabled.

# Easy way to remember
# set -e → Stop the script when a command fails.
# trap ERR → Run this command when a command fails.
# Together → Print the trap message, then exit the script (in the common case of an unhandled command failure).