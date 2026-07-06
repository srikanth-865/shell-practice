 #!/bin/bash
 
  START_TIME=$(date)
  sleep 3
  STOP_TIME=$(date)
  TOTAL_TIME=(($START_TIME-$STOP_TIME))
  echo "total time for execute in $TOTAL_TIME seconds"
