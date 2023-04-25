#!/bin/bash

#[main]
function server {
    local sub_command="$1"
    shift
    if type server_"$sub_command" >/dev/null 2>&1; then
        server_"$sub_command" "$@"
        exit 0
    fi
    # Print the help of this function
    echo "Print command help"
}
