 #!/bin/bash
set -e
trap 'echo "Error occurred! $LINENO "' ERR

ls /tmp

ls /abcd