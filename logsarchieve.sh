days=14
source=/var/log/roboshop
destination=/var/log/logs-archieve
file=$(find $source -name "*.log" -type f -mtime +$days)

tar -czvf $destination/logsfiles.tar.gz $file
if [ $? -eq 0 ];then
echo "backup is done"
else
echo "backup is not done"
fi
echo "if backup is done if we delete our old files var/log/roboshop logs by using while loop line by line"

while IFS= read -r line
do
echo "files are deleting"
rm -f $file
done <<< "$file"
