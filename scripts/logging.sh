#!/bin/bash

echo "Right now is $(date)"

date +'FORMAT'
 
### mm/dd/yyyy ###
date +'%m/%d/%Y'
 
## Time in 12 hr format ###
date +'%r'
 
## backup dir format ##
backup_dir=$(date +'%m/%d/%Y')
echo "Backup dir for today: /nas04/backups/${backup_dir}"
