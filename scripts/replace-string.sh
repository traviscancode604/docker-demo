#!/bin/bash
STORY=$(cat "${1}")
FIND_WORD=${2}
REPLACE_WORD=${3}

# To replace all occurrences, use ${parameter//pattern/string}:
NEW_STORY="${STORY//$FIND_WORD/$REPLACE_WORD}"
echo ${NEW_STORY}
