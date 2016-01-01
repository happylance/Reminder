#!/bin/bash

_echo_usage () {
    cat << EOF
    usage: $0 [time] [message(optional)]
Example: $0 3:40pm "It is time to take a break."
         $0 3:40pm
EOF
    exit 2
}

[ -z "$1" ] && _echo_usage

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
echo $DIR/showDialog.sh \"$2\" | at $1
