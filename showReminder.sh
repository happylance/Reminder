#!/bin/bash

_echo_usage () {
    cat << EOF
usage: $0 [message] [time]
Example: $0 "It is time to take a break." 3:40pm
EOF
    exit 2
}

[ -z "$1" ] && _echo_usage
[ -z "$2" ] && _echo_usage

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
echo $DIR/showDialog.sh \"$1\" | at $2
