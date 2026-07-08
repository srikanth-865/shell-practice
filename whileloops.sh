 #!/bin/bash

while IFS=',' read -r name age job
do
    echo "Name: $name"
    echo "Age: $age"
    echo "Job: $job"
    echo "------"
done < user.txt