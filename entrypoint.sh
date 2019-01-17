#!/bin/bash

if [ "$1" = "validate" ]; then
   echo "validating..."
    ./validate.sh
elif [ "$1" = "sync" ]; then
    echo "starting in sync mode..."
    ./sync.sh
elif [ "$1" = "consensus" ]; then
    echo "starting in consensus mode..."
    ./consensus.sh 
elif [ "$1" = "help" ]; then
    ./help.sh        
else
   echo "Unknown parameter: $1"
   ./help.sh        
fi