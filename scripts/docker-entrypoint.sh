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
3. Export the modified file to our host machine.

When you're ready, press enter.
EOF

read # No variable, don't care what we store here...

echo "***"
echo 'Script 1: read the contents of a file to the terminal.'
echo "***"
echo -e "I hope you like some Abe Simpson...\nFrom \"Last Exit to Springfield\" S04E17..."
echo "♬♬♬"
./scripts/read-file.sh ./abe.txt
echo -e "♬♬♬\n"

echo -e "It turns out Abe really meant Capital City, instead of Shelbyville. Let's make that fix.\nWhenever you're ready, press enter."
read # No variable, don't care what we store here...
NEW_ABE=$(./scripts/replace-string.sh ./abe.txt "Shelbyville" "*****Capital City*****")

echo ${NEW_ABE}