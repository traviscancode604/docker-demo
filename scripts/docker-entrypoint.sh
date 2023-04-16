#!/bin/bash
export FILE_NAME_PREFIX=$(date +%Y%m%d%H%M%S)
export NEW_FILE_NAME=${FILE_NAME_PREFIX}-${TEXT_FILE_NAME}
export SEARCH_STRING="Shelbyville"
export REPLACE_STRING="Capital City"
export WELCOME_STRING="I hope you like some Abe Simpson...\nFrom \"Last Exit to Springfield\" S04E17..."

./scripts/run.sh
