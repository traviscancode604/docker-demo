#!/bin/bash
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

When you're ready, press enter.
EOF

read # No variable, don't care what we store here...

echo "***"
echo 'Step 1: read the contents of a file to the terminal.'
echo -e "***\n"

echo -e "I hope you like some Abe Simpson...\nFrom \"Last Exit to Springfield\" S04E17..."
echo "♬♬♬"
./scripts/read-file.sh ./abe.txt
echo -e "♬♬♬\n"

echo -e "Whenever you're ready, press enter."
read # No variable, don't care what we store here...

echo "***"
echo 'Step 2: Make the string replacement.'
echo -e "***\n"

echo -e "It turns out Abe really meant Capital City, instead of Shelbyville. Let's make that fix.\nWhenever you're ready, press enter."
read # No variable, don't care what we store here...
NEW_ABE=$(./scripts/replace-string.sh ./abe.txt "Shelbyville" "*****Capital City*****")

echo -e "With the ammendment, this is the new non-sense:\n"
echo ${NEW_ABE}

echo -e "Whenever you're ready, press enter."
read # No variable, don't care what we store here...

echo "***"
echo 'Step 3: Make the string replacement.'
echo -e "***\n"

echo "Now, we'll store the modified file outside of the Docker container so we can retrieve it later."
echo -e "Whenever you're ready, press enter."
read # No variable, don't care what we store here...

FILE_NAME_PREFIX=$(date +%Y%m%d%H%M%S)
echo "We'll use this format for the file name: ${FILE_NAME_PREFIX}"
FILE_NAME=${FILE_NAME_PREFIX}-abe.txt
echo ${NEW_ABE} > ./logs/${FILE_NAME}
echo "check that it created"
ls -la ./logs/${FILE_NAME}
