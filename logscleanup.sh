#!/bin/bash

SOURCE_DIR=$1
DAYS=${2:-14} # default 14 days

if [ -z "$SOURCE_DIR" ]; then  #directory is present or not
    echo "ERROR:: Missing parameters"
    echo "USAGE:: $0 <source-dir> [days(optional default to 14)]"
    exit 1
fi