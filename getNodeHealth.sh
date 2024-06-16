# Date: 01/12/2022
#
# This script outputs the node health
#
# Version: v1
####
#########
set -x # debug mode
set -e # exit the script when there is an error set -o pipefail
df -h
free -g
nproc
ps -ef | grep amazon | awk -F" " '{print $2}'