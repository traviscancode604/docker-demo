#!/bin/bash

star_box_art() {
  echo -e "\n***************************"
  echo ${1}
  echo -e "***************************\n"
}

cat << EOF
██████   ██████   ██████ ██   ██ ███████ ██████  
██   ██ ██    ██ ██      ██  ██  ██      ██   ██ 
██   ██ ██    ██ ██      █████   █████   ██████  
██   ██ ██    ██ ██      ██  ██  ██      ██   ██ 
██████   ██████   ██████ ██   ██ ███████ ██   ██ 
                                                 
                                                 
██████  ███████ ███    ███  ██████               
██   ██ ██      ████  ████ ██    ██              
██   ██ █████   ██ ████ ██ ██    ██              
██   ██ ██      ██  ██  ██ ██    ██              
██████  ███████ ██      ██  ██████               
                                    
EOF
# If you like what you see, check it out here:
# https://patorjk.com/software/taag/#p=display&f=ANSI%20Regular&t=Docker%0ADemo

cat << EOF
Welcome to my Docker demo!
We're going to:
1. Read the contents of a file to the terminal.
2. Run a script to replace a word in the file.
3. Save the modified file to our host machine.

EOF

star_box_art "Step 1: read the contents of a file to the terminal."

echo -e ${WELCOME_STRING}
echo -e "\n♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬"
./scripts/read-file.sh ./${TEXT_FILE_NAME}
echo -e "♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬♬"

star_box_art 'Step 2: Make the string replacement.'
echo "It turns out Abe really meant ${REPLACE_STRING}, instead of ${SEARCH_STRING}. Let's make that fix.\n"
AMMENDED_FILE=$(./scripts/replace-string.sh ./${TEXT_FILE_NAME} "${SEARCH_STRING}" "${REPLACE_STRING}")

echo -e "With the ammendment, this is the new non-sense:\n"
echo ${AMMENDED_FILE}

star_box_art 'Step 3: Make the string replacement.'
echo "Now, we'll store the modified file outside of the Docker container so we can retrieve it later."
echo "We'll use this format for the file name: ${FILE_NAME_PREFIX}"

echo ${AMMENDED_FILE} > ./${LOGPATH}/${NEW_FILE_NAME}
echo "check that the file was created..."
ls -la ./${LOGPATH}/${NEW_FILE_NAME}
