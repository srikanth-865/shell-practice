 #!/bin/bash

while IFS=',' read -r name age job
do
    echo "Name: $name $age $job"
    echo "------"
done < user.txt