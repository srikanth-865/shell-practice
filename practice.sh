#!/bin/bash
days=3

file=$(find . -name "*.log" -type f -mtime +$days)
echo "we get files by $days and $file"
