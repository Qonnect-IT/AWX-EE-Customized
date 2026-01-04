#!/bin/bash - 
#===============================================================================
#
#          FILE: run.sh
# 
#         USAGE: ./run.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Qonnect-IT
#  ORGANIZATION: Qonnect-IT
#       CREATED: 04-01-2026
#      REVISION:  ---
#===============================================================================

set -o nounset

ansible-runner worker --private-data-dir=/runner
